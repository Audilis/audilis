class EmailMessage
  include ActiveModel::Model
  include ActiveModel::Validations

  attr_accessor :topic, :name, :email, :message

  validates_format_of :email, with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
  validates_presence_of :message
end
