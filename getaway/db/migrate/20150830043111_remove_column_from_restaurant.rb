class RemoveColumnFromRestaurant < ActiveRecord::Migration
  def change
  	remove_column :restaurants, :order_id, :integer
  	remove_column :restaurants, :visit_id, :integer
  end
end
