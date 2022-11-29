class AddColumnsToIssue < ActiveRecord::Migration[7.0]
  def change
    add_column :issues, :category, :string
    add_column :issues, :subcategory, :string
    add_column :issues, :subsubcategory, :string
  end
end
