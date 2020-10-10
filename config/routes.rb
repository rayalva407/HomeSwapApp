Rails.application.routes.draw do
  get '/auth/google_oauth2/callback', to: "sessions#create_with_omniauth"
  resources :users, only: [:show, :new, :create]
  resources :homes
  resources :trips

  resources :users do
    resources :trips
  end
  
  get 'welcome/start'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
  root 'welcome#start'
end
