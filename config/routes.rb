Rails.application.routes.draw do

  root to: 'home#index'

  get 'home/index'
  resources :events

  get 'users/new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
