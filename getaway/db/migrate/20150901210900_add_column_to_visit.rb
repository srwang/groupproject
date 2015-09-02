class AddColumnToVisit < ActiveRecord::Migration
  def change
  	add_column :visits, :menu, :text
  	add_column :temps, :menu, :text
  end
end

