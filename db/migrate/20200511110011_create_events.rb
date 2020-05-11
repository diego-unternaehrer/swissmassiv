class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.date :date
      t.string :place
      t.string :country
      t.boolean :cancelled

      t.timestamps
    end
  end
end
