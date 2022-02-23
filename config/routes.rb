Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }
  root to: "movies#index"
  post 'like/:id' => 'likes#create', as: 'create_like'
  delete 'like/:id' => 'likes#destroy', as: 'destroy_like'
  #post "likes/:movie_id/create" => "likes#create"
  #post "likes/:movie_id/destroy" => "likes#destroy"
  resources :movies do
    resources :likes, only: [:create, :index, :show, :destroy]
  end  
  
  resources :rooms do
    resources :comments 
  
  end
  
  resources :users do
    member do
      get :likes
    end
  end  
end
