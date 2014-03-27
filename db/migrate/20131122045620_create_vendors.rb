class CreateVendors < ActiveRecord::Migration
  def self.up
    create_table :vendors do |t|
      t.integer :vendor_id
      t.string :name
      t.string :address
      t.string :city
      t.string :vstate
      t.string :zipcode
      t.string :phone
      t.string :email
      t.string :tax_id

      t.timestamps
    end
  end

  def self.down
    drop_table :vendors
  end
end
