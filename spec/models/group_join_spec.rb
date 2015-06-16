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

require 'rails_helper'

RSpec.describe GroupJoin, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
