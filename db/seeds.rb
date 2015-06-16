# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

DebtCategory.create(description: 'energy bill')
DebtCategory.create(description: 'water bill')
DebtCategory.create(description: 'internet bill')
DebtCategory.create(description: 'utility bill')
DebtCategory.create(description: 'food (restaurant)')
DebtCategory.create(description: 'food (other)')
DebtCategory.create(description: 'other')

GroupCategory.create(description: 'housing')
GroupCategory.create(description: 'other')

DebtStatus.create(description: 'pending payment')
DebtStatus.create(description: 'paid')



