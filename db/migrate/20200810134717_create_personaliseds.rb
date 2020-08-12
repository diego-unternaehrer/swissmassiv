class CreatePersonaliseds < ActiveRecord::Migration[5.2]
  def change
    create_table :personaliseds do |t|
      t.string :name

      t.timestamps
    end
  end
end
