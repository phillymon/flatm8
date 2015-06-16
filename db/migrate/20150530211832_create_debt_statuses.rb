class CreateDebtStatuses < ActiveRecord::Migration
  def change
    create_table :debt_statuses do |t|
      t.string :description

      t.timestamps
    end
  end
end
