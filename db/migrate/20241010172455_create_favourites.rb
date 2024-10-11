class CreateFavourites < ActiveRecord::Migration[7.2]
  def change
    create_table :favourites do |t|
      t.integer :user_id
      t.integer :trail_id

      t.timestamps
    end
  end
end
