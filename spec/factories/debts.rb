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

FactoryGirl.define do
  factory :debt do
    amount "9.99"
debtor_id 1
debtee_id 1
description "MyString"
debt_category_id 1
  end

end
