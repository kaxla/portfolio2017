class ContactMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.contact_mailer.contact_me.subject
  #
  def contact_me(contact)
    @name = contact.name
    @body = contact.message
    mail to: "kaylas.email.address@gmail.com", from: contact.email
  end
end
