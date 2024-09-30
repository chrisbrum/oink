class AddSelectedColumnToBudget < ActiveRecord::Migration[7.1]
  def change
    add_column :budgets, :selected, :boolean
  end
end
