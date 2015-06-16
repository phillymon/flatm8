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

class Note < ActiveRecord::Base
  belongs_to :user
  belongs_to :group
  validates :description, presence: true
end
