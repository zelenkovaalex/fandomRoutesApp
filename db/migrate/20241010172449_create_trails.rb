class CreateTrails < ActiveRecord::Migration[6.0]
  def change
    create_table :trails do |t|
      t.string :title, null: false
      t.text :description, null: false
      t.references :user, null: true, foreign_key: true
      t.references :fandom, null: true, foreign_key: true

      t.timestamps
    end
  end
end