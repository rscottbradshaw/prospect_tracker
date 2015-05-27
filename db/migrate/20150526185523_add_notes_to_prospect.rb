class AddNotesToProspect < ActiveRecord::Migration
  def change
    add_column :prospects, :notes, :text
  end
end
