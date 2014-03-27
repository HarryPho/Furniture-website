class AddPhotoPopupPathToProducts < ActiveRecord::Migration
  def self.up
    add_column :products, :photo_popup_path, :string
  end

  def self.down
    remove_column :products, :photo_popup_path
  end
end
