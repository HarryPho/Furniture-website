class CreateTerritories < ActiveRecord::Migration
  def self.up
    create_table :territories do |t|
      t.integer :territory_id
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :territories
  end
end
