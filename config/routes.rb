Rails.application.routes.draw do
  resources :disprods
  resources :forsales
  resources :forauctions
  resources :users 

  root 'static_pages#home'
  get 'users/new'
  get '/about', to: 'static_pages#about' 
  get '/contact', to: 'static_pages#contact'
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  get '/display', to: 'disprods#index'
  get '/forauction', to: 'forauctions#index'
  get '/forsale', to: 'forsales#index'
end
