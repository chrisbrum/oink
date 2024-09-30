class AddSlugToBudgets < ActiveRecord::Migration[7.1]
  def change
    add_column :budgets, :slug, :string
  end
end
