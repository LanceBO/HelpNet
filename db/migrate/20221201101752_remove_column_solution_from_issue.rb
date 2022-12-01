class RemoveColumnSolutionFromIssue < ActiveRecord::Migration[7.0]
  def change
    remove_column :issues, :solution
  end
end
