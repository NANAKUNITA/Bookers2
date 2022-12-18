Rails.application.routes.draw do
  devise_for :users
  root to: "homes#top"
  resources :books
  resources :users, only:[:show, :edit, :update]
  get "/homes/about"=>"homes#about", as: "about"
  get '/books'=>'books#destroy'
  get 'users'=>'users#index'

end
