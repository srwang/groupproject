class AddReferenceForMenuitems < ActiveRecord::Migration
  def change
  		add_reference :restaurants, :menu_item, index: true,
  		foreign_key: true
  end
end
