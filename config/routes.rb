class SubdomainConstraint
  def self.matches?(request)
    subdomains = %w{ www admin}
    request.subdomain.present? && subdomains.exclude?(request.subdomain)
  end
end

Rails.application.routes.draw do
  devise_for :admins
  constraints SubdomainConstraint do
    devise_for :users
    root to: 'events#index'
  end

  namespace :admin do
    resources :companies
  end
  root to: 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
end
