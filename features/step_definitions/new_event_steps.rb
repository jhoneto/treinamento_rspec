Given("I login with valid user") do
  @user = create(:user)  
  LoginHelper.login('demo', @user.email, @user.password)
end

When("I click New") do
  event_index_page = EventIndexPrism.new
  event_index_page.new_button.click
end

When("I fill event with valid data") do
  event_new_page = EventNewPrism.new
  event_new_page.name.set('Evento Teste')
  event_new_page.vacancies.set('50')
  event_new_page.start_date.set(Time.now)
  event_new_page.end_date.set(Time.now)
  event_new_page.value.set('1000')
  event_new_page.save_button.click
end

Then("I expect see new event on list") do
  expect(page).to have_content("Evento Teste")
end
