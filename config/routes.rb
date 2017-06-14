Rails.application.routes.draw do
  resources :disprods
  resources :sales_part
  resources :auction_part
 
  root 'static_pages#home'
  get 'users/new'
  get '/about', to: 'static_pages#about' 
  get '/contact', to: 'static_pages#contact'
  get '/signup', to: 'users#new'
  
  get '/display', to: 'disprods#index'
  get '/sales', to: 'sales_part#index'
  get '/auction', to: 'auction_part#index'
end
