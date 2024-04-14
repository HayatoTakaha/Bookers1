Rails.application.routes.draw do
    
  get root :to => 'homes#top'
  patch 'books/:id' => 'books#update', as: 'update_book'
   resources :books,except:[:update]
end