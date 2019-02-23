class EventNewPrism < SitePrism::Page

  element :name, '#event_name'
  element :vacancies, '#event_vacancies'
  element :start_date, '#event_start_date'
  element :end_date, '#event_end_date'
  element :value, '#event_value'
  element :save_button, '.btn.btn-primary'
  
end