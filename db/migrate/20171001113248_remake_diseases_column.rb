class RemakeDiseasesColumn < ActiveRecord::Migration[5.1]
  def change
    remove_column :mattresses, :diseases
    add_column :mattresses, :diseases, :string, array: true
  end
end
