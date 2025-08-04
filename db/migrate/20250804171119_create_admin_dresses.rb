class CreateAdminDresses < ActiveRecord::Migration[8.0]
  def change
    create_table :admin_dresses do |t|
      t.string :name
      t.text :description
      t.string :image_url
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
