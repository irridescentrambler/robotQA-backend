class AddIsShippedToRobots < ActiveRecord::Migration[5.1]
  def change
    add_column :robots, :is_shipped, :boolean
  end
end
