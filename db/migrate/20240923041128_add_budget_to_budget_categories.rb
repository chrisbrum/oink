class AddBudgetToBudgetCategories < ActiveRecord::Migration[7.1]
  def change
    add_reference :budget_categories, :budget, null: false, foreign_key: true
  end
end
