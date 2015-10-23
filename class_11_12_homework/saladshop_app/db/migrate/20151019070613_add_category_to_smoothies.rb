class AddCategoryToSmoothies < ActiveRecord::Migration
  def change
    add_column :smoothies, :category, :string
  end
end
