Dado("eu logo com um usuário válido") do
  @user = create(:user)
  LoginHelper.login('demo', @user.email, @user.password)
end

Quando("eu clico Novo") do
  pending # Write code here that turns the phrase above into concrete actions
end

Quando("eu preencho o evento com dados válidos") do
  pending # Write code here that turns the phrase above into concrete actions
end

Então("eu espero ver o evento na lista") do
  pending # Write code here that turns the phrase above into concrete actions
end
