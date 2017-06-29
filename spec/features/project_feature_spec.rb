require 'rails_helper'
include FeatureHelpers

RSpec.describe 'Projects' do
  let!(:user) {create(:user)}
  before do
    sign_in
  end

  describe 'showing a project' do
    let!(:project) {create(:project)}

    it 'shows project index page when signed in' do
      visit '/projects'
      expect(page).to have_content project.title
    end

    it 'shows project index page when NOT signed in' do
      sign_out
      visit '/projects'
      expect(page).to have_content 'Index of Projects'
      expect(page).to have_content project.title
    end
  end

  describe 'creating a new project' do
    it 'creates project from /new url when signed in' do
      visit '/projects/new'
      fill_in_project_form
      expect(page).to have_content 'Index of Projects'
      expect(page).to have_content 'My cool project title'
      expect(page).to have_content 'My cool project description'
    end

    it 'does not allow access to /new when NOT signed in' do
      sign_out
      visit '/projects/new'
      expect(page).to have_content 'You need to be logged in to do that'
    end

    it 'creates project from index when signed in' do
      visit '/projects'
      click_link 'Create New Project'
      fill_in_project_form
      expect(page).to have_content 'Index of Projects'
      expect(page).to have_content 'My cool project title'
      expect(page).to have_content 'My cool project description'
    end

    it 'does not show create link on index when NOT signed in' do
      sign_out
      visit '/projects'
      expect(page).to_not have_content 'Create New Project'
      expect(page).to have_content 'Index of Projects'
    end
  end

  describe 'editing a Project' do
    let!(:project) {create(:project)}

    it 'edits from index page when signed in' do
      visit '/projects'
      click_link 'Edit'
      expect(page).to have_content 'Editing'
      expect(page).to have_content project.title
    end

    it 'does not show edit link on index when NOT signed in' do
      sign_out
      visit '/projects'
      expect(page).to_not have_content 'edit'
      expect(page).to have_content 'Index of Projects'
    end

    it 'edits from show page when signed in' do
      visit project_path(project)
      click_link 'Edit'
      expect(page).to have_content 'Editing'
      expect(page).to have_content project.title
    end

    it 'does not show edit link on show page when NOT signed it' do
      sign_out
      visit project_path(project)
      expect(page).to_not have_content 'Edit'
      expect(page).to have_content project.title
    end
  end

  describe 'deleting a Project', js: true do
    let!(:project) {create(:project)}

    it 'deletes from index page when signed in' do
      visit '/projects'
      click_link 'Delete'
      page.driver.browser.switch_to.alert.accept
      expect(page).not_to have_content project.title
    end

    it 'does not show delete link on index when NOT signed in' do
      sign_out
      visit '/projects'
      expect(page).to_not have_content 'Delete'
      expect(page).to have_content 'Index of Projects'
    end

    it 'deletes from show page when signed in' do
      visit project_path(project.id)
      click_link 'Delete Project'
      page.driver.browser.switch_to.alert.accept
      expect(page).not_to have_content project.title
    end

    it 'does not show delete link on show page when NOT signed in' do
      sign_out
      visit project_path(project.id)
      expect(page).to_not have_content 'Delete Project'
      expect(page).to have_content project.title
    end
  end
end
