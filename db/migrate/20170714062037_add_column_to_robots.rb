class AddColumnToRobots < ActiveRecord::Migration[5.1]
  def change
    add_column :robots, :name, :string
    add_column :robots, :has_sentience, :boolean
    add_column :robots, :has_wheels, :boolean
    add_column :robots, :has_tracks, :boolean
    add_column :robots, :number_of_rotors, :integer
    add_column :robots, :color, :string
  end
end
