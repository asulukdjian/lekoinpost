Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :gardens do
    resources :appointments, only: [ :new, :create ]
    member do
      get :claim_reward
    end
  end
  resources :appointments, only: [ :edit, :update, :destroy ] do
    member do
      get :accept
      get :refuse
      get :deliver
      get :canceldeliver
    end
  end

  get '/dashboard', to: 'pages#dashboard'
  resources :chatrooms, only: :show do
    resources :messages, only: :create
  end
end
