require 'rails_helper'

RSpec.describe StaticPagesController, type: :controller do
  describe "GET #resume" do
    it "returns http success" do
      get :resume
      expect(response).to have_http_status(:success)
    end
  end

  describe "Get #home" do
    it "returns http success" do
      get :home
      expect(response).to have_http_status(:success)
    end
  end
end


#   describe "GET #new" do
