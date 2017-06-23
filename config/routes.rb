Rails.application.routes.draw do
  resources :disprods
  resources :forsale
  resources :forauction
 
  root 'static_pages#home'
  get 'users/new'
  get '/about', to: 'static_pages#about' 
  get '/contact', to: 'static_pages#contact'
  get '/signup', to: 'users#new'
  get '/display', to: 'disprods#index'
  get '/auction', to: 'forauction#index'
  get '/sale', to: 'forsale#index'
end
