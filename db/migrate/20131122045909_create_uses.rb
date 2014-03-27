class CreateUses < ActiveRecord::Migration
  def self.up
    create_table :uses do |t|
      t.integer :product_id
      t.integer :raw_material_id
      t.integer :quantity_required

      t.timestamps
    end
  end

  def self.down
    drop_table :uses
  end
end
