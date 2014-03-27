class CreateDoesBusinessIns < ActiveRecord::Migration
  def self.up
    create_table :does_business_ins do |t|
      t.integer :customer_id
      t.integer :territory_id

      t.timestamps
    end
  end

  def self.down
    drop_table :does_business_ins
  end
end
