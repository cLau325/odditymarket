Rails.application.routes.draw do
  resources :disprods

  get 'users/new'

  # root 'application#hello'
  #root 'application#welcome'
 
  root 'static_pages#home'
  get '/about', to: 'static_pages#about' 
  get '/contact', to: 'static_pages#contact'
  get '/signup', to: 'users#new'
  
  
  get '/display', to: 'disprods#index'
end
