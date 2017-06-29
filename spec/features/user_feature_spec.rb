require 'rails_helper'
include FeatureHelpers

RSpec.describe 'Users' do
  before do
    User.create(email: 'kaylas.email.address@gmail.com', password: 'password')
  end

  describe 'sign in' do
    it 'signs in with correct username/pw' do
      sign_in
      expect(page).to have_content 'You are logged in'
      expect(page).to have_content 'Log Out'
    end

    it 'does not sign in with incorrect username/pw' do
      visit '/login'
      fill_in 'email', with: 'butts@butts.com'
      fill_in 'password', with: 'butts'
      click_button 'Save'
      expect(page).to have_content 'Email or password is invalid'
      expect(page).not_to have_content 'You are logged in'
      expect(page).not_to have_content 'Log Out'
    end
  end

  describe 'sign out' do
    it 'signs out user correctly' do
      sign_in
      click_link 'Log Out'
      expect(page).to have_content 'Logged out'
    end
  end
end
