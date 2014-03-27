class CreateRawMaterials < ActiveRecord::Migration
  def self.up
    create_table :raw_materials do |t|
      t.integer :raw_material_id
      t.string :name
      t.string :unit_of_measure
      t.float :standard_cost

      t.timestamps
    end
  end

  def self.down
    drop_table :raw_materials
  end
end
