class AddProblemToSolution < ActiveRecord::Migration[7.0]
  def change
    add_column :solutions, :problems, :string
  end
end
