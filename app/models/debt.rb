# == Schema Information
#
# Table name: debts
#
#  id               :integer          not null, primary key
#  debtor_id        :integer
#  debtee_id        :integer
#  description      :string(255)
#  debt_category_id :integer
#  created_at       :datetime
#  updated_at       :datetime
#  amount           :decimal(8, 2)
#  debt_status_id   :integer
#

class Debt < ActiveRecord::Base
  belongs_to :debtor, class_name: 'User', foreign_key: 'id'
  belongs_to :debtee, class_name: 'User', foreign_key: 'id'
  belongs_to :debt_category
  belongs_to :debt_status
  validates :debtor_id, :debtee_id, :debt_category_id, :amount, :debt_status_id, presence: true

  before_create :assign_status

  protected

  def assign_status
    status = DebtStatus.find_by(description: 'pending payment')
    self.debt_status = status
  end
end
