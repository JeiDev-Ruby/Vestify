class CreateAdminDressVariants < ActiveRecord::Migration[8.0]
  def change
    create_table :admin_dress_variants do |t|
      t.references :dress, null: false, foreign_key: true
      t.string :sku
      t.references :size, null: false, foreign_key: true
      t.string :color
      t.string :condition
      t.string :status
      t.decimal :daily_rate

      t.timestamps
    end
  end
end
