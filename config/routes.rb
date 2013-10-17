Rorblog::Application.routes.draw do

  resources :users
  resources :sessions, only: [:new, :create, :destroy]

  root 'users#show'
  match 'signup', to: 'users#new', via: 'get'
  match '/signout', to: 'sessions#destroy', via: 'delete'
end
