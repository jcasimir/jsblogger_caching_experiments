JsbloggerCodemash::Application.routes.draw do
  resources :articles
  resources :comments do
    get 'count', :to => "comments#count", :on => :collection
  end
  resource  :dashboard

  #mount Resque::Server.new, :at => "/resque"
  
  root :to => 'dashboard#show'
end
