Rails.application.routes.draw do
  root to: 'homes#top'
  get 'home/about' => 'homes#about'
  devise_for :users

  resources :books, only: [:new, :create, :edit, :update, :index, :show, :destroy]

  resources :users, only: [:show, :edit, :index, :update]
end
