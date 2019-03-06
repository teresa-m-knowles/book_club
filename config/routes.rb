Rails.application.routes.draw do
  root 'welcome#index'
  
  resources :books do
    resources :reviews
  end
  # resources :authors
  get '/authors', to: 'authors#index', as: 'authors'
  post '/authors', to: 'authors#create'
  get '/authors/:id', to: 'authors#show', as: 'author'
  get '/authors/new', to: 'authors#new', as: 'new_author'
  get '/authors/:id/edit', to: 'authors#edit', as: 'edit_author'
  put '/authors/:id', to: 'authors#update'
  patch '/authors/:id', to: 'authors#update'
  delete '/authors/:id', to: 'authors#destroy'

  resources :users, only: [:show] do
    resources :reviews
  end
end
