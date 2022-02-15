Rails.application.routes.draw do
  get '/team', to: 'static#team' #Accés a la page /team
  get '/contact', to: 'static#contact' #Accés a la page /contact
  get '/index', to: 'static#index' #Accés a la page /index
  get '/', to: 'static#index' #Accés a la page /index
  get '/welcome/:id', to: 'welcome#show' #Accés a l'url caché
end
