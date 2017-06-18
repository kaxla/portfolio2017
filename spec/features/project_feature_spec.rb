require 'rails_helper'
include FeatureHelpers

RSpec.describe 'Projects' do

  describe 'creating a new project' do
    it 'creates project from /new url' do
      visit '/projects/new'
      fill_in_project_form
      expect(page).to have_content 'Index of Projects'
      expect(page).to have_content 'My cool project title'
      expect(page).to have_content 'My cool project description'
    end

    it 'creates project from index' do
      visit '/projects'
      click_link 'Create New Project'
      fill_in_project_form
      expect(page).to have_content 'Index of Projects'
      expect(page).to have_content 'My cool project title'
      expect(page).to have_content 'My cool project description'
    end
  end

  describe 'showing a project' do
    let!(:project) {create(:project)}

    it 'shows project index page' do
      visit '/projects'
      click_link project.title
      expect(page).to have_selector('h1', text: project.title)
    end
  end

  describe 'editing a Project' do
    let!(:project) {create(:project)}

    it 'edits from index page' do
      visit '/projects'
      click_link 'Edit'
      expect(page).to have_content 'Editing'
      expect(page).to have_content project.title
    end

    it 'edits from show page' do
      visit project_path(project)
      click_link 'Edit'
      expect(page).to have_content 'Editing'
      expect(page).to have_content project.title
    end
  end

  describe 'deleting a Project', js: true do
    let!(:project) {create(:project)}

    it 'deletes from index page' do
      visit '/projects'
      click_link 'Delete'
      page.driver.browser.switch_to.alert.accept
      expect(page).not_to have_content project.title
    end

    it 'deletes from show page' do
      visit project_path(project.id)
      click_link 'Delete Project'
      page.driver.browser.switch_to.alert.accept
      expect(page).not_to have_content project.title
    end
  end
end
