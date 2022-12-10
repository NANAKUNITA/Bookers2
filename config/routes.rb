Rails.application.routes.draw do
  get 'users/show'
  get 'users/edit'
  devise_for :users
  root to: "homes#top"
  resources :books, only:[:new, :create, :index, :show, :destroy]
  resources :users, only:[:show, :edit]
  get "/homes/about"=>"homes#about", as: "about"

end
