class RefactorAllTables < ActiveRecord::Migration[5.1]
  def change
    remove_column :double_mattress_ones, :email, :string
    remove_column :double_mattress_twos, :email, :string
    remove_column :mattresses, :email, :string

    add_column :customers, :first_name ,:string
    add_column :customers, :last_name ,:string
    add_column :customers, :phone ,:string
    add_column :customers, :email ,:string
    add_column :customers, :address ,:string

    add_column :customers, :address_addition ,:string
    add_column :customers, :zip_code ,:string
    add_column :customers, :city ,:string
    add_column :customers, :address_ship ,:string
    add_column :customers, :address_addition_ship ,:string

    add_column :customers, :zip_code_ship ,:string
    add_column :customers, :city_ship ,:string
    add_column :customers, :floor ,:string
    add_column :customers, :elevator ,:string
  end
end
