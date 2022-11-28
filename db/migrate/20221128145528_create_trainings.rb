class CreateTrainings < ActiveRecord::Migration[7.0]
  def change
    create_table :trainings do |t|
      t.datetime :date
      t.string :title
      t.string :category
      t.string :description
      t.integer :price

      t.timestamps
    end
  end
end
