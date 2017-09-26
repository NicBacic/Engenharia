Rails.application.routes.draw do
  devise_for :users

  resources :items
  get 'static_pages/home'

  get 'static_pages/help'

  get 'static_pages/about'

  get 'searchs/search'

  get 'devise/shared/link'

  resources :users

  root 'static_pages#home'
end
