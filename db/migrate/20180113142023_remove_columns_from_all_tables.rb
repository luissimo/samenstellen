class RemoveColumnsFromAllTables < ActiveRecord::Migration[5.1]
  def change
    remove_column :mattresses, :diseases, :string
    remove_column :double_mattress_ones, :diseases, :string
    remove_column :double_mattress_twos, :diseases, :string
    remove_column :double_mattress_twos, :diseases2, :string
    remove_column :customers, :elevator, :string
    remove_column :customers, :floor, :string
  end
end
