Rails.application.routes.draw do
  devise_for :users
  root 'events#index'

  resources :events do
    resources :comments, only: %i[create destroy]
  end

  resources :users, only: %i[show edit update]
end
