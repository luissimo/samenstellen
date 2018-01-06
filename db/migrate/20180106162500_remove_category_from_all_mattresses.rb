class RemoveCategoryFromAllMattresses < ActiveRecord::Migration[5.1]
  def change
    remove_column :mattresses, :category, :string
    remove_column :double_mattress_ones, :category, :string
    remove_column :double_mattress_twos, :category, :string
  end
end
