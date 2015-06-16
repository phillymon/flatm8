class CreateDebtCategories < ActiveRecord::Migration
  def change
    create_table :debt_categories do |t|
      t.string :description

      t.timestamps
    end
  end
end
