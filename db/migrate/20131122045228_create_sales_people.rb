class CreateSalesPeople < ActiveRecord::Migration
  def self.up
    create_table :sales_people do |t|
      t.integer :sales_person_id
      t.string :name
      t.string :phone
      t.string :email
      t.string :username
      t.string :password
      t.integer :territory_id

      t.timestamps
    end
  end

  def self.down
    drop_table :sales_people
  end
end
