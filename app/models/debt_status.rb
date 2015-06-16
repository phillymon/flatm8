# == Schema Information
#
# Table name: debt_statuses
#
#  id          :integer          not null, primary key
#  description :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

class DebtStatus < ActiveRecord::Base
end
