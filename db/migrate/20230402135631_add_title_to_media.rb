class AddTitleToMedia < ActiveRecord::Migration[6.1]
  def change
    add_column :media, :title, :string
  end
end
