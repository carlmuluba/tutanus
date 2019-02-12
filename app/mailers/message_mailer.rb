class MessageMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.message_mailer.contact_me.subject
  #
  def contact_me(message)
    @name = message.name
    @email = message.email
    @body = message.body

    mail to: "dasilva@tutanus.com", from: message.email
  end
end
