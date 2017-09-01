class ShippingAddress < ApplicationRecord
	belongs_to :customer, inverse_of: :shipping_address
end
