Rails.application.routes.draw do
  root to: 'static_page#home'

  get '/home' => 'static_page#home'
  get '/about' => 'static_page#about'

  # artwork
  get 'artwork/' => 'artwork#index'
  get 'artwork/:id' => 'artwork#show'

  resources :comments
end
