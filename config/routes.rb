#routes.rb
Rails.application.routes.draw do
  resources :rooms
  resources :users
  root 'rooms#index'
  get '/signin', to: 'sessions#new'
  post '/signin', to: 'sessions#create'
  delete '/signout', to: 'sessions#destroy'
  resources :rooms do
    resources :messages
  end
end