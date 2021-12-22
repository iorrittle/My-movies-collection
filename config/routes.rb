Rails.application.routes.draw do
  devise_for :users
  root to: "movies#index"
  resources :movies, only: [:index, :new, :create, :show, :edit, :update]
  resources :users, only: :show
end
