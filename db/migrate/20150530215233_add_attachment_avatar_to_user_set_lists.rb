class AddAttachmentAvatarToUserSetLists < ActiveRecord::Migration
  def self.up
    change_table :user_set_lists do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :user_set_lists, :avatar
  end
end
