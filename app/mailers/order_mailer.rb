class OrderMailer < ApplicationMailer
  default from: 'info@tenzen.nl'
  layout 'mailer'

  def order_success(details:)
    @details = {
      first_name: details['first_name'],
      last_name: details['last_name'],
      phone: details['phone'],
      email: details['email'],
      address: details['address'],
      address_addition: details['address_addition'],
      zip_code: details['zip_code'],
      city: details['city'],
      address_ship: details['address_ship'],
      address_addition_ship: details['address_addition_ship'],
      zip_code_ship: details['zip_code_ship'],
      city_ship: details['city_ship'],
      floor: details['floor'],
      elevator: details['elevator'],
      comment: details['comment'],
      payment_method: details['payment_method'],
      order_number: details['order_number']
    }
    mail(to: @details[:email], from: 'info@tenzen.nl', subject: 'Bedankt voor je bestelling!')
    order_received
  end

  def order_received
    mail(to: 'info@tenzen.nl', from: 'info@tenzen.nl', subject: 'Nieuwe bestelling!')
  end

end
