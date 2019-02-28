Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users, only: [:show, :edit, :update] do
    resources :messages, only: [:index]
  end

  # teams for users: only index & show
  # teams for developpers: all except destroy protected by pundit >> admin feature with devise
  resources :teams, only: [:index, :show, :new, :create, :edit, :update] do
    # new messages displayed in requests through a form
    resources :requests, only: [:index, :show, :new, :create, :edit, :update]
    # scores displayed in games (or teams)
    resources :games, only: [:index, :show, :new, :create, :edit, :update]
  end

  resources :messages, only: :create

  resources :profiles, only: :show

  # resources :dashboards, only: :show
  get '/dashboard', to: 'dashboards#show'
end
