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

require 'rails_helper'

RSpec.describe Debt, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
