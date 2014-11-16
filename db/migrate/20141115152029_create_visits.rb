class CreateVisits < ActiveRecord::Migration
  def change
    create_table :visits do |t|
      t.integer :restaurant_id
      t.integer :user_id
      t.integer :number_of_visits

      t.timestamps
    end
  end
end
