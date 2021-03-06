class CreateOrderLines < ActiveRecord::Migration
  def self.up
    create_table :order_lines do |t|
      t.integer :order_id
      t.integer :product_id
      t.integer :ordered_quantity
      t.float :product_price

      t.timestamps
    end
  end

  def self.down
    drop_table :order_lines
  end
end
