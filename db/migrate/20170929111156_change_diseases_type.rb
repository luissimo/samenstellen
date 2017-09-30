class ChangeDiseasesType < ActiveRecord::Migration[5.1]
  def change
    remove_column :mattresses, :diseases, :string, default: [].to_yaml, array: true
    add_column :mattresses, :diseases, :string, array: true
  end

end
