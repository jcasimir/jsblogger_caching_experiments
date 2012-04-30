JsbloggerCodemash::Application.routes.draw do
  resources :articles
  resources :comments
  resource  :dashboard

  mount Resque::Server.new, :at => "/resque"
  
  root :to => 'dashboard#show'
end
