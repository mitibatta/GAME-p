Rails.application.routes.draw do
  
  
  namespace :api, {format: 'json'} do
    resources :users, only: [:create, :show]
    resources :sessions, only: [:create, :destroy]
    resources :posts
    resources :favorites, only: [:index, :create, :destroy]
    resources :comments, only: [:create]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
