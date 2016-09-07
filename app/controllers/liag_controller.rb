class LiaGController < ApplicationController
  def show ; end
  def features ; end
  def characters ; end
  def faq ; end
  def media ; end
  def thank_you ; end

  def late_pledge
    if params[:cancel]
      flash.now.alert = "Payment failed. Please try again."
    end
  end

  def press
    @message = EmailMessage.new
  end
end
