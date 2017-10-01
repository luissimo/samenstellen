class AddSessionIdToMattress < ActiveRecord::Migration[5.1]
  def change
  	add_column :mattresses, :session_id, :string
  end
end
