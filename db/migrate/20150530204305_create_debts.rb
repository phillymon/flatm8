class CreateDebts < ActiveRecord::Migration
  def change
    create_table :debts do |t|
      t.integer :debtor_id
      t.integer :debtee_id
      t.string :description
      t.integer :debt_category_id

      t.timestamps
    end
  end
end
