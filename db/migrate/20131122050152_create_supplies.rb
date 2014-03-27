class CreateSupplies < ActiveRecord::Migration
  def self.up
    create_table :supplies do |t|
      t.integer :vendor_id
      t.integer :raw_material_id
      t.float :supply_unit_price

      t.timestamps
    end
  end

  def self.down
    drop_table :supplies
  end
end
