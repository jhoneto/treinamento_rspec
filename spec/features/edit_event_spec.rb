require 'rails_helper'

RSpec.feature "Events", type: :feature do
  before(:each) do
    @user = create(:user)
    @event = create(:event)
    LoginHelper.login('demo', @user.email, @user.password)    

    uri_template =  Addressable::Template.new "https://jsonplaceholder.typicode.com/comments?postId=1"
    stub_request(:get, uri_template).
      with(headers: {'Accept'=>'*/*', 'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3', 'User-Agent'=>'Ruby'}).
      to_return(body: %q([{
        "postId": 1,
        "id": 1,
        "email": "emailt@teste.com.br",
        "body": "descrição do comentário"
      }]), status: 200, headers: {})
   
  end

  scenario 'User edit event' do
    event_index_page = EventIndexPrism.new
    event_edit_page = EventNewPrism.new

    event_index_page.edit_buttons.first.click
    
    expect(event_edit_page.name.value).to eq(@event.name)
    expect(page).to have_content('Comentários')
    expect(page).to have_content('emailt@teste.com.br')

    
    
  end


end