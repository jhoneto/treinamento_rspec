class EventIndexPage < BasePage

  def new_button
    page.find('.btn.btn-primary')
  end

  def table_rows
    page.all('')
  end

end