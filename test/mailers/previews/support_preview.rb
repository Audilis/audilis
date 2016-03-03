# Preview all emails at http://localhost:3000/rails/mailers/support
class SupportPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/support/contact_us
  def contact_us
    Support.contact_us
  end

end
