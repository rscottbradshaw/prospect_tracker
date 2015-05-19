class AddIdToProspect < ActiveRecord::Migration
  def change
    add_column :prospects, :department_id, :integer
  end
end
