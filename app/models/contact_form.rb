class ContactForm < MailForm::Base
  include MailForm::Delivery

  append :remote_ip, :user_agent, :session
  attribute :name,      validate: true
  attribute :email,     validate: /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :about,     validate: true
  attribute :subject,   validate: true
  attribute :message,   validate: true
  attribute :nickname,  captcha: true

  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.
  def headers
    {
      :subject => "Nieuw bericht...",
      :to => "info@tenzen.nl",
      :from => %("#{name}" <#{email}>)
    }
  end
end