require 'faker'

User.destroy_all
Transaction.destroy_all
Account.destroy_all

# Create users
users = [
  User.create!(
    email: 'chris@mailinator.com',
    password: 'Secret1!',
    password_confirmation: 'Secret1!'
  ),
  User.create!(
    email: 'admin@mailinator.com',
    password: 'Secret1!',
    password_confirmation: 'Secret1!'
  )
]

# Account types and data
ACCOUNT_TYPES = ["bank-checking", "bank-savings", "credit-card", "credit-union"]
NICKNAMES = ["Personal Checking", "Personal Saving", "Amazon CC", "Vacation Savings", "Joint Checking"]
COMPANIES = ["Charles Schwab", "Charles Schwab", "Chase", "Rivermark Credit Union", "Charles Schwab"]

accounts = []
5.times do |idx|
  accounts << Account.create!(
    account_type: ACCOUNT_TYPES[idx],
    nickname: NICKNAMES[idx],
    company: COMPANIES[idx],
    user: users[0]
  )
end
5.times do |idx|
  accounts << Account.create!(
    account_type: ACCOUNT_TYPES[idx],
    nickname: NICKNAMES[idx],
    company: COMPANIES[idx],
    user: users[1]
  )
end

# Transaction types
TRANSACTIONS_TYPES = ["deposit", "withdrawal", "transfer", "payment"]

# Create 300 transactions, some associated with accounts, some not
500.times do
  Transaction.create!(
    transaction_type: TRANSACTIONS_TYPES.sample,
    description: Faker::Commerce.product_name,
    amount: Faker::Number.between(from: 5, to: 1000),
    date: Faker::Date.between(from: 2.years.ago, to: Date.today),
    account: [accounts.sample, nil].sample # Randomly assign an account or leave it nil
  )
end

puts "2 users created!"
puts "300 transactions created!"
puts "5 accounts created!"
