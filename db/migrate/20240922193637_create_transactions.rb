class CreateTransactions < ActiveRecord::Migration[7.1]
  def change
    create_table :transactions do |t|
      t.string :type
      t.string :string
      t.string :description
      t.integer :amount
      t.date :date
      t.timestamps
    end
  end
end
