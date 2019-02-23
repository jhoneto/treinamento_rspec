class LoginHelper

  def self.login(subdomain, email, password)
    login = ClientLoginPrism.new
    login.load(subdomain: subdomain)
    login.email.set(email)
    login.password.set(password)
    login.login_button.click
  end

end