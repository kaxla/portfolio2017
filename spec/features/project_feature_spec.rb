require 'rails_helper'
require 'spec_helper'

RSpec.describe "creating a new project" do
  it "creates a new project" do
    visit '/projects/new'
    fill_in "Title", with: "My cool project title"
    fill_in "Description", with: "My cool project description"
    click_button "Create Project"
    expect(page).to have_content "Index of Projects"
    expect(page).to have_content "My cool project title"
    expect(page).to have_content "My cool project description"
  end
end

RSpec.describe "editing a Project" do
  before do
    @project = FactoryGirl.create(:project)
  end

  it "takes you to the edit page when you click edit" do
    visit '/projects'
    click_link "Edit"
    expect(page).to have_content @project.title
  end
end
