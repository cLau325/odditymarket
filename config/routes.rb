Rails.application.routes.draw do
  get 'users/new'

  # root 'application#hello'
  root 'application#welcome'
end
