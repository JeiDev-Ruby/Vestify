class CreateAdminFines < ActiveRecord::Migration[8.0]
  def change
    create_table 'admin.fines' do |t|
      t.references :rental, null: false, foreign_key: { to_table: 'admin.rentals' }
      t.decimal :amount
      t.string :reason
      t.boolean :paid, default: false

      t.timestamps
    end
  end
end
