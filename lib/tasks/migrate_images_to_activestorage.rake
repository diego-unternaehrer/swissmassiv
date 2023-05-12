namespace :active_storage do
  desc "Migrate images to use Active Storage"
  task migrate_images: :environment do
    puts '*' * 50
    puts "Start migrating #{Spree::Image.count} images..."

    Spree::Image.find_each do |image|
      next if !image.attachment.present? || image.as_attachment.attached?

      picture = image.attachment.record
      ctype = "image/png"
      filename = picture.attachment_file_name
      filepath = "https://res.cloudinary.com/swissmassiv/"+filename
      image.as_attachment.attach(io: URI.open(filepath), content_type: ctype, filename: filename)
      image.attachment.remove!
      image.save
    end

    puts "Completed migrating #{Spree::Image.count} profiles..."
    puts '*' * 50
  end
  desc 'Rename as_attachment to attachment'
  task rename_as_attachment_to_attachment: :environment do
    sql = <<-SQL
      UPDATE active_storage_attachments
      SET name = 'attachment'
      WHERE name = 'as_attachment';
    SQL

    ActiveRecord::Base.connection.execute(sql)
  end
end
