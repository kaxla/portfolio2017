# Preview all emails at http://localhost:3000/rails/mailers/contact
class ContactPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/contact/contact_me
  def contact_me
    ContactMailer.contact_me
  end

end
