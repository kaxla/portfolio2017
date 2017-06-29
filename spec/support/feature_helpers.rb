module FeatureHelpers
  def fill_in_project_form
    fill_in 'Title', with: 'My cool project title'
    fill_in 'Description', with: 'My cool project description'
    click_button 'Create Project'
  end

  def sign_in
    visit '/login'
    fill_in 'email', with: 'kaylas.email.address@gmail.com'
    fill_in 'password', with: 'password'
    click_button 'Save'
  end

  def sign_out
    click_link 'Log Out'
  end
end
