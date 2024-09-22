require 'faker'

Transaction.delete_all
Account.delete_all

transaction_types = ["deposit", "withdrawal", "transfer", "payment"]
account_types = ["bank-checking", "bank-savings", "credit-card", "credit-union", "retirment", "investment"]

500.times do
  Transaction.create!(
    transaction_type: transaction_types.sample,
    description: Faker::Commerce.product_name,
    amount: Faker::Number.between(from: 5, to: 1000),
    date: Faker::Date.between(from: 2.years.ago, to: Date.today)
  )
end

5.times do
  Account.create!(
    account_type: account_types.sample,
    nickname: Faker::Name.unique.name,
    company: Faker::Company.name,
  )
end

puts "500 transactions have been created!"
puts "5 account have been created!"
