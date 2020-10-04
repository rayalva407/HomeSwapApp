Rails.application.routes.draw do
  get 'homes/new'
  resources :users
  resources :homes
  get 'welcome/start'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
  get 'auth/:provider/callback', to: 'sessions#googleAuth'
  get 'auth/failure', to: redirect('/')
  root 'welcome#start'
end
