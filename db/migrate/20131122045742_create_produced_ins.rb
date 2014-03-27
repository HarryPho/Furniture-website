class CreateProducedIns < ActiveRecord::Migration
  def self.up
    create_table :produced_ins do |t|
      t.integer :product_id
      t.string :work_center_id

      t.timestamps
    end
  end

  def self.down
    drop_table :produced_ins
  end
end
