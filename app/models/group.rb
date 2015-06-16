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

class Group < ActiveRecord::Base
  has_many :group_joins
  has_many :users, through: :group_joins
  has_one :owner, class: 'User', foreign_key: 'id'
  has_many :notes
end
