Rails.application.routes.draw do
  get 'items/create'
  
  resources :users, :only => [:new, :create]

  resources :lists do 
    resources :items 
  end 
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'lists#index'
end
