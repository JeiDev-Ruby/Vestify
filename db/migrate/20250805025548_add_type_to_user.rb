class AddTypeToUser < ActiveRecord::Migration[8.0]
  def change
    create_enum :type_user_enum, %w[
      admin
      client
    ]

    add_column :users, :type, :enum, enum_type: :type_user_enum, null: true
  end
end
