require 'rails_helper'

RSpec.describe ProjectsController, type: :controller do

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #show" do
    it "returns http success" do
      project = create(:project)
      get :show, params: {id: project.id}
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end
  #
  describe "GET #edit" do
    it "returns http success" do
      project = create(:project)
      get :edit, params: {id: project.id}
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #create" do
    it "returns http success" do
      get :create
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #update" do
    it "returns http success" do
      project = create(:project)
      get :update, params: {id: project.id}
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #destroy" do
    it "returns http success" do
      project = create(:project)
      get :destroy, params: {id: project.id}
      expect(response).to have_http_status(:success)
    end
  end

end
