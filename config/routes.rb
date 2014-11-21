Rails.application.routes.draw do
  root 'homepage#index'
  resources :users do
    resources :achievements, except: [:index]
  end
  resources :projects
  resources :sessions, only: [:create, :destroy]
  match '/signout', to: 'sessions#destroy', via: 'delete'
  match '/signin', to: 'sessions#create', via: 'post'
  get '/logout' => 'sessions#destroy'
end
