Rorblog::Application.routes.draw do

  resources :users
  resources :sessions, only: [:new, :create, :destroy]

  root 'user#show'
  match 'signup', to: 'user#new', via: 'get'
  match '/signout', to: 'sessions#destroy', via: 'delete'
end
