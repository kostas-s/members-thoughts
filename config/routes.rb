Rails.application.routes.draw do

  devise_for :users, :controllers => { registrations: 'registrations' }
  devise_scope :user do
    get '/users/sign_out', to: 'devise/sessions#destroy'
  end
  root 'posts#index'
  resources :posts, only: [:new, :create, :index, :destroy]
  get '/about', to: 'about#index'
end
