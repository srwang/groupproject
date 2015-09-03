class RemoveColumnFromRestaurant < ActiveRecord::Migration
  def change
  	remove_column :restaurants, :visit_id, :integer
  end
end
