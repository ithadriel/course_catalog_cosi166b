Rails.application.routes.draw do
  get 'search/search'

  resources :courses
  resources :subjects
  resources :instructors
  get 'sessions/new'
  post 'enrollments/create/:user_id&:course_id', to: 'enrollments#create'
  resources :users
  get 'users/new'
  root 'home_pages#home'
  get  '/signup',  to: 'users#new'
  post '/signup/', to: 'users#create'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
end
