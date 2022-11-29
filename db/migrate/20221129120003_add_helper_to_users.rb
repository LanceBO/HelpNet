class AddHelperToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :helper, :boolean
    add_column :users, :helper_status, :boolean
  end
end
