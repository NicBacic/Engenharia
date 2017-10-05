Rails.application.routes.draw do
  resources :jogos
  get 'static_pages/home'

  get 'static_pages/help'

  get 'static_pages/about'

  get 'users/login'

  get 'jogos/jogo'

  resources :users
  root 'static_pages#home'
end
