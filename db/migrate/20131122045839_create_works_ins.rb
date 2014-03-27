class CreateWorksIns < ActiveRecord::Migration
  def self.up
    create_table :works_ins do |t|
      t.string :employee_id
      t.string :work_center_id

      t.timestamps
    end
  end

  def self.down
    drop_table :works_ins
  end
end
