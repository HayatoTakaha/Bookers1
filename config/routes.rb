Rails.application.routes.draw do
  get 'book/post'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get root :to => 'homes#top'
end