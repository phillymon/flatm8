class AddDebtStatusIdToDebts < ActiveRecord::Migration
  def change
    add_column :debts, :debt_status_id, :integer
  end
end
