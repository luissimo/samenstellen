class AddComfortToMattresses < ActiveRecord::Migration[5.1]
  def change
    add_column :mattresses, :comfort, :string
  end
end
