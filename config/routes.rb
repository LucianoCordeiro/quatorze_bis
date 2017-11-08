Rails.application.routes.draw do

  root 'welcome#home'

  get  '/about',   to: 'welcome#about'
  get '/contact',  to: 'welcome#contact'
  get '/history',  to: 'welcome#history'
  get '/signup',   to: 'users#new'

  resources :users

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  resources :account_activations, only: [:edit]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
