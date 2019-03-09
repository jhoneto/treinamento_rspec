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

    namespace :client do
      resources :events
    end

    namespace :api do
      resources :events
    end

    root to: 'events#index'
    resources :registers, only: [:new, :create]
  end

  namespace :admin do
    resources :companies
  end
  root to: 'welcome#index'

  
end
