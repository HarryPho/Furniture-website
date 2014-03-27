class CreateCustomers < ActiveRecord::Migration
  def self.up
    create_table :customers do |t|
      t.integer :customer_id
      t.string :name
      t.string :address
      t.string :city
      t.string :c_state
      t.string :zipcode
      t.string :email
      t.string :username
      t.string :password
      t.string :c_type

      t.timestamps
    end
  end

  def self.down
    drop_table :customers
  end
end
