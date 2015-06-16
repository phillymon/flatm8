class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.string :name
      t.integer :owner_id
      t.string :description
      t.integer :group_category_id

      t.timestamps
    end
  end
end
