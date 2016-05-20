Rails.application.routes.draw do
  devise_for :users
  root to: 'static_page#home'

  get '/home' => 'static_page#home'
  get '/about' => 'static_page#about'
  get '/exhibition' => 'static_page#exhibition'
  get '/sign_in' => 'static_page#sign_in'

  get 'artwork/:slug' => 'artwork#show'
  get 'artists/' => 'artists#index'

  resources :comments
  resources :likes
  post '/exfrasis_users' => 'users#create'
end
