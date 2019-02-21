require 'rails_helper'

RSpec.describe Admin::CompaniesController, type: :controller do

  before(:each) do
    sign_in Admin.first # Using factory bot as an example
  end

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

end
