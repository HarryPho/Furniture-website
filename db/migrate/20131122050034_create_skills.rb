class CreateSkills < ActiveRecord::Migration
  def self.up
    create_table :skills do |t|
      t.string :skill_id
      t.string :skill_description

      t.timestamps
    end
  end

  def self.down
    drop_table :skills
  end
end
