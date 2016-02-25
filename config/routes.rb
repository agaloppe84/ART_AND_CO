Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'dashboard' => 'pages#dashboard'
  resources :users
  resources :reservations, except: [:update, :destroy]
  resources :artworks
end
