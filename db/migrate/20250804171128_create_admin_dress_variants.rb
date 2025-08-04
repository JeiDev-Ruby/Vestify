class CreateAdminDressVariants < ActiveRecord::Migration[8.0]
  def change
    create_table 'admin.dress_variants' do |t|
      t.references :dress, null: false, foreign_key: { to_table: 'admin.dresses' }
      t.references :size, null: false, foreign_key: { to_table: 'admin.sizes' }
      t.string :sku, null: false
      t.string :color
      t.string :condition
      t.string :status
      t.decimal :daily_rate

      t.timestamps
    end
  end
end
