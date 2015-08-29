class CreateVisits < ActiveRecord::Migration
  def change
    create_table :visits do |t|
      t.integer :user_id
      t.integer :restaurant_id

      t.timestamps null: false
    end
  end
end
