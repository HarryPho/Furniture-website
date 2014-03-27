class CreateEmployeeSkills < ActiveRecord::Migration
  def self.up
    create_table :employee_skills do |t|
      t.string :employee_id
      t.string :skill_id
      t.date :qualify_date

      t.timestamps
    end
  end

  def self.down
    drop_table :employee_skills
  end
end
