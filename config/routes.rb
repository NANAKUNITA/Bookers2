Rails.application.routes.draw do
  devise_for :users
  root to: "homes#top"
  resources :books, only:[:create, :show, :index, :edit, :destroy, :update]
  resources :users
  get "/home/about"=> "homes#about"
end
