class CreateAdminFines < ActiveRecord::Migration[8.0]
  def change
    create_table :admin_fines do |t|
      t.references :rental, null: false, foreign_key: true
      t.decimal :amount
      t.string :reason
      t.boolean :paid

      t.timestamps
    end
  end
end
