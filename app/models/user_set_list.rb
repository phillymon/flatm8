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

class UserSetList < ActiveRecord::Base
  belongs_to :user

  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>", :dash => "200x200>" }, :default_url => ":style/default.jpg"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
end
