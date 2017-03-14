Rails.application.routes.draw do
  resources :courses
  resources :subjects
  resources :instructors
  get 'sessions/new'

  resources :users
  get 'users/new'

  root 'home_pages#home'
  get  '/signup',  to: 'users#new'
  post '/signup/', to: 'users#create'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
end
