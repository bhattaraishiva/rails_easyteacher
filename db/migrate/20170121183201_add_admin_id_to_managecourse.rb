class AddAdminIdToManagecourse < ActiveRecord::Migration[5.0]
  def change
    add_column :managecourses, :admin_id, :integer
  end
end
