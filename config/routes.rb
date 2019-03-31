Rails.application.routes.draw do

  get 'questions/new'
  get 'questions/edit'
  get 'questions', to: 'questions#show'
  devise_for :users
  root to: 'home#index'

  resources :users
  resources :events do
    collection do
      get 'filter'
    end
    member do
      get 'join_event'
    end
  end

  get '/profile/:user_id', to: 'users#profile', as: :profile

  get 'home/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
