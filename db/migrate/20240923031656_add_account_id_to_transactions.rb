class AddAccountIdToTransactions < ActiveRecord::Migration[7.1]
  def change
    remove_column :transactions, :user_id, :integer
    add_reference :transactions, :account, foreign_key: true
  end
end
