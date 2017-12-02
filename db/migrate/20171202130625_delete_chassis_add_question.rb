class DeleteChassisAddQuestion < ActiveRecord::Migration[5.1]
  def change
    remove_column :mattresses, :chassis, :string
    add_column :customers, :retour_old_mattress, :string
  end
end
