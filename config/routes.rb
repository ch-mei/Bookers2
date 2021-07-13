Rails.application.routes.draw do
  root to: 'homes#top'
  devise_for :users
  get 'home/about' => 'homes#about'
  
  resources :books, only: [:new, :create, :index, :show, :destroy]do
  end
  resources :users, only: [:show]
end
