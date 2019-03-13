Rails.application.routes.draw do


  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :animals
  resources :categories
  resources :petshops
  resources :descontos
  resources :agendamentos
  devise_for :users

  devise_scope :user do
    get "/store/:store" => "devise/registrations#new"
  end

  root to: "pages#welcome"

  get 'destroy-logo', action: :destroy_logo, controller: 'pages'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
