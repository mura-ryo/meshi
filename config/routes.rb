Rails.application.routes.draw do

  devise_for :users
  root to: 'homes#top'
  get "homes/about" => "homes#about", as: "about"
  resources :users, only: [:show, :edit ,:update]
  resources :post_images, only: [:new, :create, :index, :show, :destroy]
  resources :post_images, only: [:new, :create, :index, :show, :destroy] do
   resources :post_comments, only: [:create, :des]
  end
end