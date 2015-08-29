class AddReferenceToOrders < ActiveRecord::Migration
  def change
  	add_reference :users, :order, index: true, foreign_key: true
  	add_reference :restaurants, :order, index: true,
  		foreign_key: true
  end
end
