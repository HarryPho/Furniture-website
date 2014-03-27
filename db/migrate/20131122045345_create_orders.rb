class CreateOrders < ActiveRecord::Migration
  def self.up
    create_table :orders do |t|
      t.integer :order_id
      t.date :order_date
      t.integer :customer_id
      t.date :fulfillment_date

      t.timestamps
    end
  end

  def self.down
    drop_table :orders
  end
end
