# == Schema Information
#
# Table name: group_categories
#
#  id          :integer          not null, primary key
#  description :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

class GroupCategory < ActiveRecord::Base
end
