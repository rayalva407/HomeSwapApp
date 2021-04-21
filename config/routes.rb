Rails.application.routes.draw do
  get '/auth/google_oauth2/callback', to: "sessions#create_with_omniauth"
  resources :users, only: [:show, :new, :create]
  resources :homes, only: [:show, :new, :create]
  resources :trips

  resources :users do
    resources :trips
  end

  resources :homes do
    resources :trips
  end
  

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
  root 'welcome#start'
end
