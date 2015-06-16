# == Schema Information
#
# Table name: notes
#
#  id          :integer          not null, primary key
#  description :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#  user_id     :integer
#  group_id    :integer
#

FactoryGirl.define do
  factory :note do
    description "MyString"
  end

end
