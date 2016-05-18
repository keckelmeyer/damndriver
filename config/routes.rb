Rails.application.routes.draw do
  mount Upmin::Engine => '/admin'
  root to: 'reviews#new'
  get 'new' => 'reviews#new'
  post 'new' => 'reviews#create'
  devise_for :users
  resources :users
  resources :states
  resources :ratings
  resources :reviews
  resources :categories
end
