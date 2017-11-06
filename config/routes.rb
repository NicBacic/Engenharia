Rails.application.routes.draw do

  get 'password_resets/new'

  get 'password_resets/edit'

  resources :tags

  resources :usuario_avalia_jogos

  root 'static_pages#home', as: 'home'

  get 'static_pages/home'
  get 'static_pages/about'
  get 'static_pages/help'
  get 'help' => 'static_pages#help'
  get 'about' => 'static_pages#about'
<<<<<<< HEAD

<<<<<<< HEAD
  get '/reviews/new'
  get '/usuario_avalia_jogos/new'
=======
  #get '/reviews/new'
>>>>>>> ba0903ac4cd0841ce2bea84dd8c316947d656376
=======
  get '/reviews/new'
  get '/usuario_avalia_jogos/new'

  #get '/reviews/new'
>>>>>>> 1b47e07723cc24c615a8ce837ee7422778cd66f1

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  resources :users
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> 1b47e07723cc24c615a8ce837ee7422778cd66f1
  resources :reviews

  resources :jogos do
    resources :reviews
    resources :usuario_avalia_jogos
  end
<<<<<<< HEAD
=======
=======
>>>>>>> 1b47e07723cc24c615a8ce837ee7422778cd66f1
  #resources :reviews
  resources :password_resets, only: [:new, :create, :edit, :update]
  resources :account_activations, only: [:edit]
  
  resources :jogos do
<<<<<<< HEAD
>>>>>>> ba0903ac4cd0841ce2bea84dd8c316947d656376
=======
>>>>>>> 1b47e07723cc24c615a8ce837ee7422778cd66f1

    resources :reviews, only: [:create, :new]

  end
end
