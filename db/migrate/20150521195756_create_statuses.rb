class CreateStatuses < ActiveRecord::Migration
  def change
    create_table :statuses do |t|
      t.string :name, :default => 'New'

      t.timestamps null: false
    end
  end
end
