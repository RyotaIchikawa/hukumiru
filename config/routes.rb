Rails.application.routes.draw do
  
  root 'pages#index'
  get  'pages/show'
  
  devise_for :users
  
end
