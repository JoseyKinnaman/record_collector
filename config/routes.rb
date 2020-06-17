Rails.application.routes.draw do
  root to: 'albums#homepage'
  get 'homepage' => 'albums#homepage'
  resources :albums
  devise_for :users
  get '/search' => 'albums#search'
  get '/tracks/:id' => 'albums#tracks'
  post '/albums/:id' => 'albums#create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
