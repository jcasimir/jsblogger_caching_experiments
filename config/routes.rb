JsbloggerCodemash::Application.routes.draw do
  resources :articles
  resources :comments do
    collection do
      get 'count', :to => "comments_api#count"
    end
  end
  resource  :dashboard

  #mount Resque::Server.new, :at => "/resque"
  
  root :to => 'dashboard#show'
end
