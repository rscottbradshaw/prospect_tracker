class AddIdToEmail < ActiveRecord::Migration
  def change
    add_column :emails, :prospect_id, :integer
  end
end
