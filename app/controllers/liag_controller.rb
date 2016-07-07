class LiaGController < ApplicationController
  def show ; end
  def features ; end
  def characters ; end
  def faq ; end
  def media ; end

  def press
    @message = EmailMessage.new
  end
end
