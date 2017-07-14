class AddMoreColumnsToRobots < ActiveRecord::Migration[5.1]
  def change
    add_column :robots, :on_fire, :boolean
    add_column :robots, :rusty, :boolean
    add_column :robots, :loose_screws, :boolean
    add_column :robots, :paint_scratched, :boolean
  end
end
