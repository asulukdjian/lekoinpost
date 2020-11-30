Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :gardens do
    resources :appointments, only: [ :new, :create ]
  end
  resources :appointments, only: [ :destroy ]

  get '/dashboard', to: 'pages#dashboard'
  resources :chatrooms, only: :show do
    resources :messages, only: :create
  end
end
