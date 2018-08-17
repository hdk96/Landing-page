Rails.application.routes.draw do
  root 'landing_pages#index', as: :home
  get 'landing_pages/draw', 'landing_pages#draw'
  get 'landing_pages/space', 'landing_pages#space'

  resources :landing_pages
  get '/signup',  to: 'users#new'
  resources :users, except: [:new]
end