class AddChassisColumn < ActiveRecord::Migration[5.1]
  def change
    add_column :mattresses, :chassis, :string
    add_column :double_mattress_ones, :chassis, :string
    add_column :double_mattress_twos, :chassis, :string
    add_column :double_mattress_twos, :separation, :string
  end
end
