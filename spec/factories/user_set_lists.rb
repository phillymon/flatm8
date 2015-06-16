# == Schema Information
#
# Table name: user_set_lists
#
#  id                  :integer          not null, primary key
#  user_id             :integer
#  created_at          :datetime
#  updated_at          :datetime
#  total_owed          :decimal(8, 2)
#  first_name          :string(255)
#  last_name           :string(255)
#  avatar_file_name    :string(255)
#  avatar_content_type :string(255)
#  avatar_file_size    :integer
#  avatar_updated_at   :datetime
#

FactoryGirl.define do
  factory :user_set_list do
    user_id 1
total_owed "9.99"
  end

end
