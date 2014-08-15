Rails.application.routes.draw do
  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create]
  root "welcomes#index"
  resource :dashboards, only: [:show]
  resources :teams, only: [:new, :create, :show]
  resources :drafted_player_relationships, only: [:create]
end
