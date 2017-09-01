class BillingAddress < ApplicationRecord
	belongs_to :customer, inverse_of: :billing_address

	validates :first_name, presence: true
	validates :last_name, presence: true
	validates :address, presence: true
	validates :zip_code, presence: true
	validates :city, presence: true
	validates :phone, presence: true
	validates :email, presence: true
	validates :floor, presence: true
	validates :elevator, presence: true
end
