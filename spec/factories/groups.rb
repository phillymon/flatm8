# == Schema Information
#
# Table name: groups
#
#  id                :integer          not null, primary key
#  name              :string(255)
#  owner_id          :integer
#  description       :string(255)
#  group_category_id :integer
#  created_at        :datetime
#  updated_at        :datetime
#

FactoryGirl.define do
  factory :group do
    name "MyString"
owner_id 1
description "MyString"
group_category_id 1
  end

end
