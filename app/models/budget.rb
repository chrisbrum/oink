class Budget < ApplicationRecord
  belongs_to :user
  has_many :budget_categories, dependent: :destroy
end
