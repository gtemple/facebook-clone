Rails.application.routes.draw do

  
  get 'likes/create'
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  resources :posts do
     resources :comments, only: [:new, :create, :destroy]
  end
  
  resources :users
  resources :user_steps
  resources :likes, only: [:create, :destroy]
  resources :friendships, only: [:index, :create, :destroy]
  root to: 'posts#index'

end
