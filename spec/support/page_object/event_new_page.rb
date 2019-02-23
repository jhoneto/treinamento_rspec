class EventNewPage < BasePage

  EVENT_NAME = '#event_name'

  def name
    page.find(EVENT_NAME)
  end

  def vacancies
    page.find('#event_vacancies')
  end

  def start_date
    page.find('#event_start_date')
  end

  def end_date
    page.find('#event_end_date')
  end

  def value
    page.find('#event_value')
  end

  def save_button
    page.find('.btn.btn-primary')
  end

end