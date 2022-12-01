class AddReferencesToIssues < ActiveRecord::Migration[7.0]
  def change
    add_reference :issues, :solution, foreign_key: true
  end
end
