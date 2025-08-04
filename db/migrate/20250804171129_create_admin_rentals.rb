class CreateAdminRentals < ActiveRecord::Migration[8.0]
  def change
    create_table 'admin.rentals' do |t|
      t.references :customer, null: false, foreign_key: { to_table: 'admin.customers' }
      t.references :dress_variant, null: false, foreign_key: { to_table: 'admin.dress_variants' }
      t.date :start_date
      t.date :end_date
      t.date :return_date
      t.decimal :deposit_amount
      t.boolean :deposit_returned, default: false
      t.decimal :total_cost
      t.string :status

      t.timestamps
    end
  end
end
