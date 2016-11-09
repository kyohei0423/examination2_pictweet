Rails.application.routes.draw do
  devise_for :users
  root to: "tweets#index"
  resources :tweets, only: [:index, :show, :new, :create, :destroy, :edit, :update]
  resources :users, only: [:show]
end
