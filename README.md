# TDD com Rspec

Treinamento de TDD com Rspec

###Rspec

Adicione a gem para *development* e *test*
```ruby
group :development, :test do
  gem 'rspec-rails', '~> 3.8'
end
```
```sh
# Instalando
$ bundle install

# Configurando no projeto
$ rails generate rspec:install
      create  .rspec
      create  spec
      create  spec/spec_helper.rb
      create  spec/rails_helper.rb
```

####Factory Bot
```ruby
group :test do
  gem "factory_bot_rails"
end
```
Criar uma pasta *factories* dentro da pasta *specs*

**Exemplo de factory**
```ruby
FactoryBot.define do
  factory :student do
    name { "Hamilton Oliveira" }
    register  { "1234" }    
  end
end
```
####Faker
```ruby
group :test do
  gem 'faker'
end
```
**Exemplo em uma factory**
```ruby
FactoryBot.define do
  factory :student do
    name { Faker::Name.name }
    register { Faker::Number.number(6) }
  end
end
```
#### Should Matchers
```ruby
group :test do
  gem 'shoulda-matchers'
end
```
**Exemplo em uma factory**
```ruby
it {is_expected.to validate_presence_of :register}
```