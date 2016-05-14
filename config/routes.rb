Rails.application.routes.draw do
  devise_for :users
  root to: 'static_page#home'

  get '/home' => 'static_page#home'
  get '/about' => 'static_page#about'

  get 'artwork/' => 'artwork#index'
  get 'artwork/:id' => 'artwork#show'

  resources :comments
  resources :likes
end
