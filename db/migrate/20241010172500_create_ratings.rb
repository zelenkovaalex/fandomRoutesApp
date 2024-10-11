class CreateRatings < ActiveRecord::Migration[7.2]
  def change
    create_table :ratings do |t|
      t.integer :trail_id
      t.integer :user_id

      t.timestamps
    end
  end
end
