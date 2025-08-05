class CreateAdminTransactions < ActiveRecord::Migration[8.0]
  def change
    create_table 'admin.transactions' do |t|
      t.references :rental, null: false, foreign_key: { to_table: 'admin.rentals' }
      t.decimal :amount
      t.string :transaction_type
      t.string :status

      t.timestamps
    end
  end
end
