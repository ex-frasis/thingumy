Rails.application.routes.draw do
  root to: 'static_page#home'

  get '/home' => 'static_page#home'

  # artwork
  get 'artwork/index' => 'artwork#index'
  get 'artwork/:id' => 'artwork#show'
end
