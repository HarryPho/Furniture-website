class CreateProducts < ActiveRecord::Migration
  def self.up
    create_table :products do |t|
      t.integer :product_id
      t.string :description
      t.string :finish
      t.float :standard_price
      t.integer :product_line_id
      t.string :photo_path
      t.float :cost
      t.float :annual_sales_goal

      t.timestamps
    end
  end

  def self.down
    drop_table :products
  end
end
