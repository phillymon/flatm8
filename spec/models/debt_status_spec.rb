# == Schema Information
#
# Table name: debt_statuses
#
#  id          :integer          not null, primary key
#  description :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

require 'rails_helper'

RSpec.describe DebtStatus, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
