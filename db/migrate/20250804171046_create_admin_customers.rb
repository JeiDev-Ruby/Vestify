class CreateAdminCustomers < ActiveRecord::Migration[8.0]
  def change
    create_table 'admin.customers' do |t|
      t.string :name
      t.string :email
      t.string :phone_number
      t.text :address

      t.timestamps
    end
  end
end
