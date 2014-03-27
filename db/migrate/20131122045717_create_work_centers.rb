class CreateWorkCenters < ActiveRecord::Migration
  def self.up
    create_table :work_centers do |t|
      t.string :work_center_id
      t.string :location

      t.timestamps
    end
  end

  def self.down
    drop_table :work_centers
  end
end
