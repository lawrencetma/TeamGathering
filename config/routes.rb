Rails.application.routes.draw do
  root 'homepage#index'
  resources :users do
    resources :achievements, except: [:index]
  end
  resources :projects
  resources :sessions, only: [:create, :destroy]
  match '/signup', to: 'users#new',  via: 'get'
  match '/signin', to: 'sessions#create', via: 'post'
  match '/signout', to: 'sessions#destroy', via: 'delete'
end
