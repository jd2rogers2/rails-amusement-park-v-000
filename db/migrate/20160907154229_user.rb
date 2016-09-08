class User < ActiveRecord::Migration
  def change
    create_table :users do |u|
      u.string :name
      u.string :password
      u.integer :nausea, default: 0
      u.integer :happiness, default: 0
      u.integer :tickets, default: 0
      u.integer :height, default: 0
      u.boolean :admin, default: false
    end
  end
end
