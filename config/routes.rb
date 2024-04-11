Rails.application.routes.draw do
  get '/books' => 'books#index'
  get root :to => 'homes#top'
  
 resources :books
end