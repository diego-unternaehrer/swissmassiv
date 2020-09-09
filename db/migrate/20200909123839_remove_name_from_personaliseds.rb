class RemoveNameFromPersonaliseds < ActiveRecord::Migration[5.2]
  def change
    remove_column :personaliseds, :name, :string
  end
end
