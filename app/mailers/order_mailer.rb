class OrderMailer < ApplicationMailer
  default from: 'info@tenzen.nl'
  layout 'mailer'

  def order_success(recipient)
    mail(to: recipient)
  end
end
