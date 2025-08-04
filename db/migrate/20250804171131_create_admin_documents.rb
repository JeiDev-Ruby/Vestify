class CreateAdminDocuments < ActiveRecord::Migration[8.0]
  def change
    create_table 'admin.documents' do |t|
      t.references :rental, null: false, foreign_key: { to_table: 'admin.rentals' }
      t.string :document_type
      t.string :file_url

      t.timestamps
    end
  end
end
