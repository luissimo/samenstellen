class CreateBillingAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :billing_addresses do |t|
      t.string :first_name
      t.string :last_name
      t.string :address
      t.string :address_addition
      t.string :zip_code
      t.string :city
      t.string :phone
      t.string :email
      t.string :floor
      t.string :elevator

      t.timestamps
    end
  end
end
