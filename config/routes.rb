Rails.application.routes.draw do
  get 'sessions/new'

  resources :disprods
  resources :forsales
  resources :forauctions
  resources :users 

  root 'static_pages#home'
  get 'users/new'
  
  
  get '/about',     to: 'static_pages#about' 
  get '/support',   to: 'static_pages#support' 
  get '/contact',   to: 'static_pages#contact'
  
  
  get '/signup',    to: 'users#new'
  post '/signup',   to: 'users#create'
  
  get '/login',     to: 'sessions#new'
  post '/login',    to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  
  get '/display',   to: 'disprods#index'
  get '/forauction',to: 'forauctions#index'
  get '/forsale',   to: 'forsales#index'
end
