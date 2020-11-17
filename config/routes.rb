Rails.application.routes.draw do

  resources :posts

  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }

  #devise_scope :user do
  #  root to: 'devise/registrations#new'
  #end

  root to: 'posts#index'

end
