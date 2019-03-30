Rails.application.routes.draw do

  devise_for :users
  root to: 'home#index'

  resources :users
  resources :events

  get '/profile/:user_id', to: 'users#profile', as: :profile

  get 'home/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
