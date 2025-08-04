class CreateAdminSizes < ActiveRecord::Migration[8.0]
  def change
    create_table :admin_sizes do |t|
      t.string :name

      t.timestamps
    end
  end
end
