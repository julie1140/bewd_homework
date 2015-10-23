class RemoveTypeFromInventories < ActiveRecord::Migration
  def change
    remove_column :inventories, :type, :string
  end
end
