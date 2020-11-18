Rails.application.routes.draw do

  
  

  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }

  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  resources :posts, :users
  resources :friend_requests, only: [:create, :destroy]
  resources :friendships, only: [:create, :destroy]
  root to: 'posts#index'

end
