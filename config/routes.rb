Rails.application.routes.draw do
  get 'users/show'
  get 'users/edit'
  devise_for :users
  resources :post_images, only: [:new, :create, :index, :show, :destroy] do
  resource :favorites, only: [:create, :destroy]
  resources :post_comments, only: [:create, :destroy]
  end
  resources :users, only: [:show, :edit, :update]
  root to: 'homes#top'
  get 'users', to: 'homes#about', as: 'about'
end