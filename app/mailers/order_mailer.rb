class OrderMailer < ApplicationMailer
  default from: 'info@tenzen.nl'
  layout 'mailer'

  def order_success(email:, first_name:)
    @first_name = first_name
    @email = email
    mail(to: email)
  end
end
