Rails.application.routes.draw do
  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create]
  root "welcomes#index"
  resource :dashboards, only: [:show]
  resources :teams, only: [:new, :create, :show] do
    resources :team_memberships, only: [:create, :destroy]
  end
end
