module FeatureHelpers
  def fill_in_project_form
    fill_in 'Title', with: 'My cool project title'
    fill_in 'Description', with: 'My cool project description'
    click_button 'Create Project'
  end
end
