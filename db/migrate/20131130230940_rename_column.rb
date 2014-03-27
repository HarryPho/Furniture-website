class RenameColumn < ActiveRecord::Migration
  def self.up
    rename_column :users, :type, :c_type
  end

  def self.down
  end
end
