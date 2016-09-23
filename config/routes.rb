Rails.application.routes.draw do
  root to: 'artists#index'

  resources :artists, only: [:index]
  get 'show_albums', to: 'artists#show_albums'
end
