class AddAmountToDebts < ActiveRecord::Migration
  def change
    add_column :debts, :amount, :decimal, :precision => 8, :scale => 2
  end
end
