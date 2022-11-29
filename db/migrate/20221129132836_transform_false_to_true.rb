class TransformFalseToTrue < ActiveRecord::Migration[7.0]
  def change
    change_column_null :issues, :ticket_id, true
  end
end
