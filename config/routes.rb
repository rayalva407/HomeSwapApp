Rails.application.routes.draw do
  get 'welcome/start'
  root 'welcome#start'
end
