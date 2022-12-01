class AddColumnsToSolutions < ActiveRecord::Migration[7.0]
  def change
    add_column :solutions, :description, :text
    add_column :solutions, :title, :string
  end
end
