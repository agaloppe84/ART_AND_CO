Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :users
  resources :reservations, except: [:update, :destroy]
  resources :artworks, only: [:create, :index, :show]
end
