Rails.application.routes.draw do
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
  resources :zonas
  resources :municipios
  resources :estefans

  root to: "eventos#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
