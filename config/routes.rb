Rails.application.routes.draw do
  
  root 'forms#index'

  devise_for :users

  resources :forms, only: :index
  resources :users, only: :show do
    resources :outfits, only: [:index, :new, :create, :destroy]

  end
  
  end
