Rails.application.routes.draw do
    
  get root :to => 'homes#top'
  patch 'books/:id' => 'books#update', as: 'update_book'
  delete 'books/:id' => 'books#destroy', as: 'destroy_book'
   resources :books, only: [:index, :show, :edit,:create]
end