Rails.application.routes.draw do
<<<<<<< HEAD
  get 'users/new'

  # root 'application#hello'
  root 'application#welcome'
  get '/signup', to: 'users#new'
=======
  
  root 'static_pages#home'
  get '/about', to: 'static_pages#about' 
  get '/contact', to: 'static_pages#contact'
>>>>>>> filling-in-layout
end
