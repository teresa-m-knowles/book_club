Rails.application.routes.draw do
  root 'welcome#index'

  # resources :books do
  #   resources :reviews
  # end

  get '/books', to: 'books#index', as: 'books'
  post '/books', to: 'books#create'
  get '/books/new', to: 'books#new', as: 'new_book'
  get '/books/:id/edit', to: 'books#edit', as: 'edit_book'
  get '/books/:id', to: 'books#show', as: 'book'
  put '/books/:id', to: 'books#update'
  delete '/books/:id', to: 'books#destroy'
  # patch '/books/:id', to: 'books#update'

  get '/books/:book_id/reviews', to: 'reviews#index', as: 'book_reviews'
  post '/books/:book_id/reviews', to: 'reviews#create'
  get '/books/:book_id/reviews/new', to: 'reviews#new', as: 'new_book_review'
  get '/books/:book_id/reviews/:id/edit', to: 'reviews#edit', as: 'edit_book_review'
  get '/books/:book_id/reviews/:id', to: 'reviews#show', as: 'book_review'
  put '/books/:book_id/reviews/:id', to: 'reviews#update'
  patch '/books/:book_id/reviews/:id', to: 'reviews#update'
  delete '/books/:book_id/reviews/:id', to: 'reviews#destroy'



  # resources :authors
  get '/authors', to: 'authors#index', as: 'authors'
  post '/authors', to: 'authors#create'
  get '/authors/:id', to: 'authors#show', as: 'author'
  get '/authors/new', to: 'authors#new', as: 'new_author'
  get '/authors/:id/edit', to: 'authors#edit', as: 'edit_author'
  put '/authors/:id', to: 'authors#update'
  patch '/authors/:id', to: 'authors#update'
  delete '/authors/:id', to: 'authors#destroy'


  # resources :users, only: [:show] do
  #   resources :reviews
  # end

  get '/users/:id', to: 'users#show', as: 'user'

  get '/users/:user_id/reviews', to: 'reviews#index', as: 'user_reviews'
  post '/users/:user_id/reviews', to: 'reviews#create'
  get '/users/:user_id/reviews/new', to: 'reviews#new', as: 'new_user_review'
  get '/users/:user_id/reviews/:id/edit', to: 'reviews#edit', as: 'edit_user_review'
  get '/users/:user_id/reviews/:id', to: 'reviews#show', as: 'user_review'
  put '/users/:user_id/reviews/:id', to: 'reviews#update'
  patch '/users/:user_id/reviews/:id', to: 'reviews#update'
  delete '/users/:user_id/reviews/:id', to: 'reviews#destroy'






end
