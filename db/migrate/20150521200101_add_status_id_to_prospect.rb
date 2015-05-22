class AddStatusIdToProspect < ActiveRecord::Migration
  def change
    add_column :prospects, :status_id, :integer
  end
end
