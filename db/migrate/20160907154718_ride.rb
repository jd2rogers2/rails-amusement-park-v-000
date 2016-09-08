class Ride < ActiveRecord::Migration
  def change
    create_table :rides do |r|
      r.integer :attraction_id 
      r.integer :user_id
    end
  end
end
