class AddColumnsToMattresses < ActiveRecord::Migration[5.1]
  def change
  	add_column :mattresses, :mattress_length, :string
  	add_column :mattresses, :mattress_width, :string
  	add_column :mattresses, :category, :string
  end
end
