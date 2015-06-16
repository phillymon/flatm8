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

class GroupJoin < ActiveRecord::Base
  belongs_to :user
  belongs_to :group
end
