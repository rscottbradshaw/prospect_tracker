class CreateDepartments < ActiveRecord::Migration
  def change
    create_table :departments do |t|
      t.string :name, :default => 'Unassigned'
      t.string :manager, :default => 'None'

      t.timestamps null: false
    end
  end
end
