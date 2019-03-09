class EventIndexPrism < SitePrism::Page
  element :new_button, '.btn.btn-primary'
  elements :edit_buttons, '.btn.btn-default'
end