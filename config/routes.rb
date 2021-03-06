Rails.application.routes.draw do
  root to: 'albums#homepage'
  get 'homepage' => 'albums#homepage'
  resources :albums
  # devise_for :users
  get '/' => 'albums#homepage'
  get '/search' => 'albums#search'
  get '/tracks/:id' => 'albums#tracks'
  post '/albums/:id' => 'albums#create'
  get '/edit_collection' => 'albums#edit_collection'

  devise_for :users, controllers: { 
    sessions: 'users/sessions',
    registrations: 'users/registrations',
    # confirmations: 'users/confirmations',
    # omniauthcallbacks: 'users/omniauthcallbacks',
    # passwords: 'users/passwords',
    # unlocks: 'users/unlocks'
  }
    # possible routes needed for pg_search
  # resources :search_my_collection, only: [:index]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
