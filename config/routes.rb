Rails.application.routes.draw do

  root 'pages#index'
  get  'likes/create'
  get  'likes/destroy'
  
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions:      'users/sessions'
  }
  resources :microposts,    only: [:create, :destroy]
  resources :relationships, only: [:create, :destroy]
  resources :users do # only: [:index, :show]
    member do
      get :following, :followers
    end
  end
  resources :likes, only: [:create, :destroy]
  
end