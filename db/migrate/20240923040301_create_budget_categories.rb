class CreateBudgetCategories < ActiveRecord::Migration[7.1]
  def change
    create_table :budget_categories do |t|
      t.string :name
      t.integer :allotted_amount
      t.integer :current_amount

      t.timestamps
    end
  end
end
