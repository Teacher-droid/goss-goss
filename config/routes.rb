Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :user
  resources :gossips
  resources :sessions
  resources :like, only:[:create,:destroy]

  root to:'home#index' 
  #get 'gossips/:id',to:'gossips#show', as: "gossips"
  #get 'gossips/', to: 'gossips#new', 
  # get '/user/:id', to: 'user#show',as: "user"
  
  get '/team', to: 'team#show'
  get '/contact', to: 'contact#show'
  get '/welcome/:name', to: 'welcome#show'
 
  delete 'logout' => 'sessions#destroy'
end


