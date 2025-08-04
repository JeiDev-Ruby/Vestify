class CreateAdminTransactions < ActiveRecord::Migration[8.0]
  def change
    create_table :admin_transactions do |t|
      t.references :rental, null: false, foreign_key: true
      t.decimal :amount
      t.string :transaction_type
      t.string :status

      t.timestamps
    end
  end
end
