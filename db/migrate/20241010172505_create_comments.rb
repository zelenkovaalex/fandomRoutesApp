class CreateComments < ActiveRecord::Migration[7.2]
  def change
    create_table :comments do |t|
      t.integer :trail_id
      t.integer :user_id
      t.string :body
      t.string :answer_image
      t.datetime :datetime

      t.timestamps
    end
  end
end
