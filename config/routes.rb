Rails.application.routes.draw do

  resources :ingredientes
  resources :receta
  resources :categoria_recs
  resources :categoria_ings
  resources :ingredientes
  resources :usuarios
  resources :ingredientes
  resources :receta
  resources :receta
  resources :receta
  resources :receta
  resources :receta
  
  get 'cuenta/login', to: 'cuenta#login', as: :login
  get 'receta/show', to: 'receta#show', as: :misrec
  
  get 'inicio/index', as: :inicio
  
  get 'menus/comidas', to: 'menus#comida', as: :comidas
  get 'menus/desayunos', to: 'menus#desayuno', as: :desayunos
  get 'menus/cenas', to: 'menus#cena', as: :cenas
  get 'menus/snacks', to: 'menus#snack', as: :snacks

  get 'sugerencias/sugerencias', as: :sugerencias

  
  get 'receta/new', to: 'receta#alta', as: :altasr
  get 'ingredientes/new'

  resources :usuarios

  root 'cuenta#login'


  
end
