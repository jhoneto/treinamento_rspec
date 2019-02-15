# TDD com Rspec

Treinamento de TDD com Rspec

**Configurando Rspec**

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