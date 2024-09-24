require 'faker'

User.destroy_all
Transaction.destroy_all
Account.destroy_all
Budget.destroy_all
BudgetCategory.destroy_all

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

budgets = []
users.each do |user|
  budgets << Budget.create!(name: "My Budget", user_id: user.id)
end

budgets.each do |budget|
  BudgetCategory.create!(name: "Rent", allotted_amount: 8000, budget_id: budget.id)
  BudgetCategory.create!(name: "Utilities", allotted_amount: 225, budget_id: budget.id)
  BudgetCategory.create!(name: "Car Payment", allotted_amount: 415, budget_id: budget.id)
  BudgetCategory.create!(name: "Insurance", allotted_amount: 165, budget_id: budget.id)
  BudgetCategory.create!(name: "Phone Bill", allotted_amount: 46, budget_id: budget.id)
  BudgetCategory.create!(name: "Netflix", allotted_amount: 10, budget_id: budget.id)
  BudgetCategory.create!(name: "Eating Out", allotted_amount: 150, budget_id: budget.id)
  BudgetCategory.create!(name: "Groceries", allotted_amount: 400, budget_id: budget.id)
  BudgetCategory.create!(name: "Transporatation", allotted_amount: 65, budget_id: budget.id)
end

puts "Users created!"
puts "Transactions created!"
puts "Accounts created!"
puts "Budgets created!"
puts "BudgetCategories created!"
