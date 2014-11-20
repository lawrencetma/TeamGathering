Rails.application.routes.draw do
  root 'homepage#index'
  resources :users do
    resources :achievements
  end
  resources :projects
end
