class Customer < ApplicationRecord
	has_one :billing_address
	has_one :shipping_address

	accepts_nested_attributes_for :billing_address, reject_if: :all_blank
	accepts_nested_attributes_for :shipping_address, reject_if: :all_blank
end
