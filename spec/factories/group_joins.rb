# == Schema Information
#
# Table name: group_joins
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  group_id   :integer
#  created_at :datetime
#  updated_at :datetime
#

FactoryGirl.define do
  factory :group_join do
    user_id 1
group_id 1
  end

end
