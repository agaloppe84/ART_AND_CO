Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :users
  resources :reservations
  resources :artworks, only: [:create, :index]
end
