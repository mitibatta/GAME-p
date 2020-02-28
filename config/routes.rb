Rails.application.routes.draw do
  
  namespace :api, {format: 'json'} do
    resources :users, only: [:create, :show]
    resources :sessions, only: [:create]
    resources :posts
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
