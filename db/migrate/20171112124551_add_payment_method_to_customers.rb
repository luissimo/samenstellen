class AddPaymentMethodToCustomers < ActiveRecord::Migration[5.1]
  def change
    add_column :customers, :payment_method, :string
  end
end
