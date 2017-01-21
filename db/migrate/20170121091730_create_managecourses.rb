class CreateManagecourses < ActiveRecord::Migration[5.0]
  def change
    create_table :managecourses do |t|
      t.string :coursename
      t.string :responsibleperson
      t.numeric :duration

      t.timestamps
    end
  end
end
