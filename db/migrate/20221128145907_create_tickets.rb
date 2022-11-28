class CreateTickets < ActiveRecord::Migration[7.0]
  def change
    create_table :tickets do |t|
      t.boolean :status
      t.string :category
      t.string :url
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
