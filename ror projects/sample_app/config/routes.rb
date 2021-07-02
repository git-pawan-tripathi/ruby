Rails.application.routes.draw do
  resources :users
  resources :sessions,only:[:new,:create,:destroy]
  root to: 'static_pages#home'
  get '/help',to: 'static_pages#help'
  get '/about',to: 'static_pages#about'
  get '/contact',to: 'static_pages#contact'
  get '/signup',to: 'users#new'
  get '/signin',to: 'sessions#new'
  get '/signout',to: 'sessions#destroy',via: :delete
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end