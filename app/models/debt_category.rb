# == Schema Information
#
# Table name: debt_categories
#
#  id          :integer          not null, primary key
#  description :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

class DebtCategory < ActiveRecord::Base
  validates :description, presence: true
end
