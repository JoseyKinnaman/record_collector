Rails.application.routes.draw do
  root to: 'albums#homepage'
  get 'homepage' => 'albums#homepage'
  resources :albums
  devise_for :users
end
