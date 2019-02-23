require 'rails_helper'

describe 'Events API', type: :request do
  
  context 'public access' do
    before do
      Apartment::Tenant.switch! 'demo2'
      create(:event)
      Apartment::Tenant.switch! 'demo'
      @events = []
      @events << create(:event)
      @events << create(:event)
    end

    it 'load all project' do
      get 'http://demo.lvh.me/api/events.json'
      expect(response).to have_http_status(:success)
      json = JSON.parse(response.body)
      expect(json.length).to eq 2
      expect(json.first["name"]).to eq @events.first.name
    end
  end
end