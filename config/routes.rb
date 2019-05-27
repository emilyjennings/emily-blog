Rails.application.routes.draw do
  resources :categories do
    resources :posts, only: [:show, :index]
  end
  resources :users
  resources :posts do
    resources :comments, only: [:create, :new, :index, :destroy]
    resources :categories, only: [:index, :show]
  end
  root 'posts#index'
  get   '/signup', to: 'user#new'
  get   '/login',   to: 'session#new'
  post   '/login',   to: 'session#create'
  delete '/logout',  to: 'session#destroy'
  get '/logout', to: 'session#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
