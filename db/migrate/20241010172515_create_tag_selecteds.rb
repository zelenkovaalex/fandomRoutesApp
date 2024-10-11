class CreateTagSelecteds < ActiveRecord::Migration[7.2]
  def change
    create_table :tag_selecteds do |t|
      t.integer :trail_id
      t.integer :tag_id

      t.timestamps
    end
  end
end
