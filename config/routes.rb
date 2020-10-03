Rails.application.routes.draw do
  get 'homes/new'
  resources :users
  resources :homes
  get 'welcome/start'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
  root 'welcome#start'
end
