class AddSessionIdToCustomers < ActiveRecord::Migration[5.1]
  def change
  	add_column :customers, :session_id, :string
  end
end
