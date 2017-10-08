Rails.application.routes.draw do

  resources :tags
  root 'static_pages#home'

  get 'static_pages/home'

  get 'static_pages/help'

  get 'static_pages/about'

  get 'users/login'

  resources :users
  resources :jogos

  
end
