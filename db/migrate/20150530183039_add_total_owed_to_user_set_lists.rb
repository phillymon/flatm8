class AddTotalOwedToUserSetLists < ActiveRecord::Migration
  def change
    add_column :user_set_lists, :total_owed, :decimal, :precision => 8, :scale => 2
  end
end
