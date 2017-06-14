require 'rails_helper'
require 'spec_helper'

RSpec.describe "creating a new post" do
  it "shows the project create page" do
    visit '/projects/new'
    click_on "New Project"
    fill_in "Title", with: "My cool project title"
    fill_in "description", with: "My cool project description"
    click_button "Create Project"
    expect(page).to have_content "project successfully created"
  end
end
