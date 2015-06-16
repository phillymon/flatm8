# == Schema Information
#
# Table name: debt_categories
#
#  id          :integer          not null, primary key
#  description :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

FactoryGirl.define do
  factory :debt_category do
    description "MyString"
  end

end
