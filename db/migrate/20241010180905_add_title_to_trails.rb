class AddTitleToTrails < ActiveRecord::Migration[7.2]
  def change
    add_column :trails, :title, :string
  end
end
