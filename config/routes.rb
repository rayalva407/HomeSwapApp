Rails.application.routes.draw do
  resources :users
  get 'welcome/start'
  root 'welcome#start'
end
