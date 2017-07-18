class AddIsExtinguishedToRobots < ActiveRecord::Migration[5.1]
  def change
    add_column :robots, :is_extinguished, :boolean
  end
end
