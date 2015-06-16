class AddSettingsToUserSetLists < ActiveRecord::Migration
  def change
    add_column :user_set_lists, :first_name, :string
    add_column :user_set_lists, :last_name, :string
  end
end
