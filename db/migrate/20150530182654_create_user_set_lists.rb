class CreateUserSetLists < ActiveRecord::Migration
  def change
    create_table :user_set_lists do |t|
      t.integer :user_id
      t.timestamps
    end
  end
end
