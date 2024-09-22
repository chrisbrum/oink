class RemoveColumnNameFromTransaction < ActiveRecord::Migration[7.1]
  def change
    remove_column :transactions, :string, :string
  end
end
