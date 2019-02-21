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

  describe "POST #create" do
    it "valid with success" do
      company_params = attributes_for(:company)
      expect {
        post :create, params: { company: company_params }
      }.to change(Company, :count).by(1)
      expect(assigns(:company).errors.empty?).to eq true
    end
    it "invalid without name" do
      company_params = attributes_for(:company, name: nil)
      expect {
        post :create, params: { company: company_params }
      }.to change(Company, :count).by(0)
    end
    it "invalid without submain" do
      company_params = attributes_for(:company, subdomain: nil)
      expect {
        post :create, params: { company: company_params }
      }.to change(Company, :count).by(0)
    end
  end

end
