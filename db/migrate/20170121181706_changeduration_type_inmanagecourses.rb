class ChangedurationTypeInmanagecourses < ActiveRecord::Migration[5.0]
  def change
    change_column :managecourses, :duration, :integer 
  end
end
