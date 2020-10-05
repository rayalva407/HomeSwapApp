Rails.application.routes.draw do
  get '/auth/google_oauth2/callback', to: "sessions#create_with_omniauth"
  get 'homes/new'
  resources :users
  resources :homes
  get 'welcome/start'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
  root 'welcome#start'
end
