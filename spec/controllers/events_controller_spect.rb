require 'rails_helper'

RSpec.describe EventsController, type: :controller do

  context "access control by subdomain" do
    before do
      Apartment::Tenant.switch! 'demo2'
      @event_demo2 = create(:event)
      Apartment::Tenant.switch! 'demo'
      @event_demo = create(:event)
      @event_demo1 = create(:event)
    end

    describe "GET #index" do
      it "returns http success" do
        get :index
        expect(response).to have_http_status(:success)
      end
      
      it "user access demo subdomain" do
        get :index
        expect(assigns(:events)).to eq([@event_demo, @event_demo1])
      end
    end
  end

end