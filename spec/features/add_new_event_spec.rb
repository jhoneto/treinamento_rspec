require 'rails_helper'

RSpec.feature "Events", type: :feature do
  before(:each) do
    @user = create(:user)
    LoginHelper.login('demo', @user.email, @user.password)
    
  end

  scenario 'User create new event' do    
    click_link "New"
    fill_in "event_name", with: 'Evento Teste'
    fill_in "event_vacancies", with: '50'
    fill_in "event_start_date", with: Time.now
    fill_in "event_end_date", with: Time.now
    fill_in "event_value", with: '1000'
    click_button "Save"
    expect(page).to have_content("Evento Teste")    
  end

  scenario 'User create new event use page object' do    
    event_index_page = EventIndexPage.new
    event_new_page = EventNewPage.new
    
    event_index_page.new_button.click
    event_new_page.name.set('Evento Teste')
    event_new_page.vacancies.set('50')
    event_new_page.start_date.set(Time.now)
    event_new_page.end_date.set(Time.now)
    event_new_page.value.set('1000')
    event_new_page.save_button.click
    
    expect(page).to have_content("Evento Teste")    
  end

  scenario 'User create new event use page object prism' do    
    event_index_page = EventIndexPrism.new
    event_new_page = EventNewPrism.new
    
    event_index_page.new_button.click
    event_new_page.name.set('Evento Teste')
    event_new_page.vacancies.set('50')
    event_new_page.start_date.set(Time.now)
    event_new_page.end_date.set(Time.now)
    event_new_page.value.set('1000')
    event_new_page.save_button.click

    expect(page).to have_content("Evento Teste")    
  end

  scenario 'User create new event use page object prism' do    
    event_index_page = EventIndexPrism.new
    event_new_page = EventNewPrism.new
    
    event_index_page.new_button.click
    #event_new_page.name.set('Evento Teste')
    event_new_page.vacancies.set('50')
    event_new_page.start_date.set(Time.now)
    event_new_page.end_date.set(Time.now)
    #event_new_page.value.set('1000')
    event_new_page.save_button.click

    expect(event_new_page.errors.size).to eq 2
    event_new_page.name.set('Evento Teste')
    event_new_page.save_button.click
    expect(event_new_page.errors.size).to eq 1
  end

end