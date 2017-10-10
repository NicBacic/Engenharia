Rails.application.routes.draw do
  resources :reviews
  root 'static_pages#home'

  get 'static_pages/home'

  get 'static_pages/help'

  get 'static_pages/about'

  get 'sessions/new'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  resources :users
  resources :jogos
<<<<<<< HEAD
=======
  
>>>>>>> e0d0b2fad9ee565f17335521b1b90855b8af716a
end
