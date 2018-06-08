Rails.application.routes.draw do
  
  get '/signup', to: 'users#new'
  get '/home',to: 'static_pages#home'
  get '/help' ,to: 'static_pages#help'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'static_pages#home'
  post '/signup', to: 'users#create'
  resources :users

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  resources :account_activations, only: [:edit]
  resources :password_resets, only: [:new, :create, :edit, :update]
end
