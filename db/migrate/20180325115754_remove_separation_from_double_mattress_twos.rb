class RemoveSeparationFromDoubleMattressTwos < ActiveRecord::Migration[5.1]
  def change
    remove_column :double_mattress_twos, :separation, :string
  end
end
