class AddRefToReview < ActiveRecord::Migration[7.0]
  def change
    add_reference :reviews, :ticket, null: false, foreign_key: true
  end
end
