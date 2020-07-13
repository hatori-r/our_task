Rails.application.routes.draw do
  devise_for :users
  root to: "tasks#index"
  namespace :tasks do
    resources :searches, only: :index
  end
  resources :tasks do
    resources :comments, only: [:create, :destroy]
    resources :likes, only: [:create, :destroy]
  end
  resources :users
  resources :relationships, only: [:create, :destroy]
end
