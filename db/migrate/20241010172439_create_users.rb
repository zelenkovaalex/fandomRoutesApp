class CreateUsers < ActiveRecord::Migration[7.2]
  def change
    create_table :users do |t|
      t.boolean :is_admin
      t.string :email
      t.string :password
      t.string :phone
      t.string :username
      t.string :avatar
      t.integer :age
      t.string :location
      t.json :fandom
      t.string :description
      t.string :created_trails
      t.string :achievements

      t.timestamps
    end
  end
end
