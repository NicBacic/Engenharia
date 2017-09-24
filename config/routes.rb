Rails.application.routes.draw do
  resources :items
  get 'static_pages/home'

  get 'static_pages/help'

  get 'static_pages/about'

  get 'users/login'

  get 'searchs/search'

  resources :users
  root 'static_pages#home'
end
