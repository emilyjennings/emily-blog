Rails.application.routes.draw do
  resources :categories
  resources :comments
  resources :users
  resources :posts
  root 'posts#index'
  get   '/signup', to: 'users#new'
  get   '/login',   to: 'session#new'
  post   '/login',   to: 'session#create'
  delete '/logout',  to: 'session#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
