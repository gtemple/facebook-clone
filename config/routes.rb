Rails.application.routes.draw do

  
  

  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }

  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  resources :posts, :users
  root to: 'posts#index'

end
