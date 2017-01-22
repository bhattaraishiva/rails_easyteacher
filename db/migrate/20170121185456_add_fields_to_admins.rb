class AddFieldsToAdmins < ActiveRecord::Migration[5.0]
  def change
    add_column :admins, :firstname, :string
    add_column :admins, :middlename, :string
    add_column :admins, :lastname, :string
    add_column :admins, :gender, :boolean
    add_column :admins, :date_of_birth, :datetime
    add_column :admins, :address, :string
    add_column :admins, :usertype, :boolean, default: false
  end
end
