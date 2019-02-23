class ClientLoginPrism < SitePrism::Page
  set_url "http://{subdomain}.lvh.me/users/sign_in"
  element :email, '#user_email'
  element :password, '#user_password'
  element :login_button, '.btn.btn-primary.btn-block.btn-lg'

end