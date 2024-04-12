Rails.application.routes.draw do
  get '/books' => 'books#index'
  get root :to => 'homes#top'
  get '/books/:id' => 'books#show', as: 'book'
  resources :books
end