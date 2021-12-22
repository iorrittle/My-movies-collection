Rails.application.routes.draw do
  devise_for :users
  root to: "movies#index"
  resources :movies 
  resources :rooms do
    resources :comments, only: :create
  end
  resources :users, only: :show
end
