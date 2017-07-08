require 'rails_helper'

RSpec.describe 'contacts' do

  describe 'contact form' do
    it 'shows the right form at /contact' do
      visit '/contact'
      expect(page).to have_content 'Contact Me!'
    end

    it 'submits valid form correctly' do
      visit '/contact'
      page.fill_in :email, with: 'email@email.com'
      page.fill_in :name, with: 'Bob Jones'
      fill_in :message, with: 'blerg blerg blerg blerg'
      click_button "Send"
      expect(page).to have_content 'Message sent!'
    end

    it 'does not submit invalid form' do
      visit '/contact'
      click_button 'Send'
      expect(page).to have_content 'Something went wrong, please try again'
      expect(page).to have_content 'Contact Me!'
    end
  end
end
