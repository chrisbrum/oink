class CreateAccounts < ActiveRecord::Migration[7.1]
  def change
    create_table :accounts do |t|
      t.string :account_type
      t.string :nickname
      t.string :company

      t.timestamps
    end
  end
end
