class CreateAdminSchema < ActiveRecord::Migration[8.0]
  def change
    execute 'CREATE SCHEMA IF NOT EXISTS admin;'
  end
end
