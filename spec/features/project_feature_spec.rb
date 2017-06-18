require 'rails_helper'
require 'spec_helper'

RSpec.describe "creating a new project" do
  it "creates a new project from /new url" do
    visit '/projects/new'
    fill_in "Title", with: "My cool project title"
    fill_in "Description", with: "My cool project description"
    click_button "Create Project"
    expect(page).to have_content "Index of Projects"
    expect(page).to have_content "My cool project title"
    expect(page).to have_content "My cool project description"
  end

  # it "creates project from index" do
  #
  # end
end

# Rspec.describe "showing a project" do
#   before do
#     @project = FactoryGirl.create(:project)
#   end
#
#   it "shows project from index page" do
#
#   end
# end

RSpec.describe "editing a Project" do
  before do
    @project = FactoryGirl.create(:project)
  end

  it "takes you to the edit page when you click edit from the index page" do
    visit '/projects'
    click_link "Edit"
    expect(page).to have_content @project.title
  end

  # it "takes you to the edit page when you click edit from the show page" do
  #
  # end
end

RSpec.describe "deleting a Project", js: true do
  before do
    @project = FactoryGirl.create(:project)
  end

  it "deletes from the index page" do
    visit '/projects'
    click_link 'Delete'
    page.driver.browser.switch_to.alert.accept
    expect(page).not_to have_content @project.title
  end

  it "deletes from the show page" do
    visit project_path(@project.id)
    click_link 'Delete Project'
    page.driver.browser.switch_to.alert.accept
    expect(page).not_to have_content @project.title
  end
end
