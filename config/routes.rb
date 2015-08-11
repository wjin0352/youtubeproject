Rails.application.routes.draw do

  devise_for :users
  resources :users
  resources :videos, only: [:index, :new, :create]
  root 'users#index'

end
