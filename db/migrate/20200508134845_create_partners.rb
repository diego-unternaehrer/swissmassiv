class CreatePartners < ActiveRecord::Migration[5.2]
  def change
    create_table :partners do |t|
      t.string :name
      t.string :address
      t.string :zip_code
      t.string :place
      t.string :country
      t.string :link

      t.timestamps
    end
  end
end
