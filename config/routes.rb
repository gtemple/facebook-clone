Rails.application.routes.draw do

  
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }

  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  resources :posts do
     resources :comments, only: [:new, :create, :destroy]
  end
  
  resources :users
  root to: 'posts#index'

end
