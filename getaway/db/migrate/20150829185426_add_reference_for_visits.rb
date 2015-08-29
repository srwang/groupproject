class AddReferenceForVisits < ActiveRecord::Migration
  def change
  	add_reference :users, :visit, index: true, foreign_key: true
  	add_reference :restaurants, :visit, index: true,
  		foreign_key: true
  end
end
