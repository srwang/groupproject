class AddReferenceToTemp < ActiveRecord::Migration
  def change
  	  	add_reference :users, :temp, index: true, foreign_key: true
  		add_reference :restaurants, :temp, index: true,
  		foreign_key: true
  end
end
