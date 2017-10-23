Rails.application.routes.draw do

  root 'static_pages#home', as: 'home'

  get 'static_pages/home'
  get 'static_pages/about'
  get 'static_pages/help'
  get 'help' => 'static_pages#help'
  get 'about' => 'static_pages#about'

  get '/reviews/new'
  get '/usuario_avalia_jogos/new'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  resources :users
  resources :reviews
  resources :usuario_avalia_jogos

  resources :jogos do
    resources :reviews
    resources :usuario_avalia_jogos
  end


end
