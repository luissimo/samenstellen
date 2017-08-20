class RemoveSizeFromMattresses < ActiveRecord::Migration[5.1]
  def change
    remove_column :mattresses, :size
  end
end
