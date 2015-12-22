class SubscriptionsController < ApplicationController
  def create
    subscription = subscribe(subscription_params)
    @email = subscription[:email]
  rescue Mailchimp::ListAlreadySubscribedError
    render 'already_subscribed'
  end

  private

  def subscription_params
    params.require(:subscription).permit(:email)
  end

  def mailchimp
    @mailchimp ||= Mailchimp::API.new(ENV['MAILCHIMP_API_KEY'])
  end

  def subscribe(email)
    mailchimp.lists.subscribe(ENV['MAILCHIMP_LIST_ID'], email)
  end
end
