class RemoveRetourOldMattressFromCustomers < ActiveRecord::Migration[5.1]
  def change
    remove_column :customers, :retour_old_mattress, :string
  end
end
