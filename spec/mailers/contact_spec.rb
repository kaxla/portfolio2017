require "rails_helper"

RSpec.describe ContactMailer, type: :mailer do
  describe "contact_me" do
    let(:mail) { ContactMailer.contact_me }

    it "renders the headers" do
      expect(mail.subject).to eq("Contact me")
      expect(mail.to).to eq(["to@example.org"])
      expect(mail.from).to eq(["from@example.com"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to match("Hi")
    end

    it "sends" do
      let!(:contact) {create(:contact)}
      email = ContactMailer.contact_me(message)
      
    end
  end

end
