class SupportMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.support.contact_us.subject
  #
  def contact_us(message)
    @message = message.message
    @sender = "#{message.name || 'Anonymous'} <#{message.email}>"
    @subject = message.topic || 'Message'

    mail subject: @subject, reply_to: @sender, to: 'support@audilis.com'
  end
end
