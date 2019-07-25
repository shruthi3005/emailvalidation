Rails.application.routes.draw do
  
  root 'pages#index'

get 'about', to: 'pages#about'

resources :articles

namespace :api do
  get '/validate_email', to: 'email_validation#validate_email'
  get '/verify_otp', to: 'email_validation#verify_otp' 
end
end
