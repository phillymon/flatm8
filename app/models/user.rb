# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string(255)      default(""), not null
#  encrypted_password     :string(255)      default(""), not null
#  reset_password_token   :string(255)
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :inet
#  last_sign_in_ip        :inet
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#

class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_one :user_set_list
  has_many :debts
  has_many :group_joins
  has_many :groups, through: :group_joins
  has_many :notes

  after_create :make_setlist

  def name
    if self.profile.first_name.nil?
      '(name undefined)'
    else
      if self.profile.last_name.nil?
        self.profile.first_name
      else
        self.profile.first_name + ' ' + self.profile.last_name
      end
    end

  end

  def profile
    self.user_set_list
  end

  protected

  def make_setlist
    UserSetList.create(user: self, total_owed: 0.00)
  end
end
