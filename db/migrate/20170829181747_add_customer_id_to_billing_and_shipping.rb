class AddCustomerIdToBillingAndShipping < ActiveRecord::Migration[5.1]
  def change
  	add_column :billing_addresses, :customer_id, :string
  	add_column :shipping_addresses, :customer_id, :string
  end
end
