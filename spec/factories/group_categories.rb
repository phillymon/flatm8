# == Schema Information
#
# Table name: group_categories
#
#  id          :integer          not null, primary key
#  description :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

FactoryGirl.define do
  factory :group_category do
    description "MyString"
  end

end
