require 'rails_helper'

RSpec.describe Contact, type: :model do
  subject {described_class.new}

  it "is valid with valid attributes" do
    subject.name = "Beyonce"
    subject.email = "beyonce@beyonce.com"
    subject.message = "hey girl, it's Bey"
    expect(subject).to be_valid
  end

  it "is not valid without a name" do
    subject.email = "beyonce@beyonce.com"
    subject.message = "hey girl, it's Bey"
    expect(subject).to_not be_valid
  end

  it "is not valid without an email" do
    subject.name = "Beyonce"
    subject.message = "hey girl, it's Bey"
    expect(subject).to_not be_valid
  end

  it "is not valid without a message" do
    subject.name = "Beyonce"
    subject.email = "beyonce@beyonce.com"
    expect(subject).to_not be_valid
  end

  it "is not valid blank" do
    expect(subject).to_not be_valid
  end
end
