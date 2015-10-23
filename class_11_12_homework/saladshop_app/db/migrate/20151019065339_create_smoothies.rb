class CreateSmoothies < ActiveRecord::Migration
  def change
    create_table :smoothies do |t|
      t.string :ingredient
      t.string :type
      t.integer :quantity
      t.string :unit

      t.timestamps null: false
    end
  end
end
