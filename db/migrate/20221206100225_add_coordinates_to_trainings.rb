class AddCoordinatesToTrainings < ActiveRecord::Migration[7.0]
  def change
    add_column :trainings, :latitude, :float
    add_column :trainings, :longitude, :float
    add_column :trainings, :address, :string
  end
end
