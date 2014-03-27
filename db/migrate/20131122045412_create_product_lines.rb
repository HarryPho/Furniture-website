class CreateProductLines < ActiveRecord::Migration
  def self.up
    create_table :product_lines do |t|
      t.integer :product_line_id
      t.string :name
      t.float :annual_sales_goal

      t.timestamps
    end
  end

  def self.down
    drop_table :product_lines
  end
end
