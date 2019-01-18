Rails.application.routes.draw do

  
  get 'forms/registro/:id', to: 'forms#new', as: 'forms'
  post 'forms/create/:id', to: 'forms#create', as: 'form_save'
  get 'forms/agradecimiento/:id', to: 'forms#agradecer', as: 'form_agradecer'

  resources :militantes
  resources :zonas
  devise_for :users
  resources :puntos
  resources :empresarios
  resources :eventos
  resources :voluntarios
  resources :aportes
  resources :universidads
  resources :empresas
  resources :politicos
  resources :punto_vs
  resources :municipios
  resources :estefans

  root to: "eventos#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
