class ContactController < ApplicationController
  def new
    @message = EmailMessage.new
  end

  def create
    @message = EmailMessage.new(contact_params)
    if verify_recaptcha(model: @message) && @message.valid?
      SupportMailer.contact_us(@message).deliver_now
    end
  end

  private

  def contact_params
    params.require(:email_message).permit(:email, :name, :topic, :message)
  end
end
