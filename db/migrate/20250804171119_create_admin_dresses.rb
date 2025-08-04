class CreateAdminDresses < ActiveRecord::Migration[8.0]
  def change
    create_table 'admin.dresses' do |t|
      t.string :name
      t.text :description
      t.string :image_url
      t.references :category, null: false, foreign_key: { to_table: 'admin.categories' }

      t.timestamps
    end
  end
end
