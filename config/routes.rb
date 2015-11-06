Rails.application.routes.draw do

  get 'sessions/new'

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
  get 'cuenta/misfav', to: 'cuenta#misfav', as: :misfav
  get 'cuenta/misrec', to: 'cuenta#misrec', as: :misrecetas
  get 'receta/show', to: 'receta#show', as: :misrec
  get '/receta/busqueda/:search', to: 'receta#busqueda', as: :busca
  get '/receta/:id/:calif', to: 'receta#califica', as: :califica
  
  get '/receta/addfav/:id', to: 'receta#addfav', :as => "favadd"
  get '/receta/favdel/:id', to: 'receta#favdel', :as => "favdel"
  
  get 'inicio/index', as: :inicio
  
  get 'menus/comidas', to: 'menus#comida', as: :comidas
  get 'menus/desayunos', to: 'menus#desayuno', as: :desayunos
  get 'menus/cenas', to: 'menus#cena', as: :cenas
  get 'menus/snacks', to: 'menus#snack', as: :snacks

  get 'sugerencias/sugerencias', as: :sugerencias
  
  get    'signup'  => 'usuarios#new'
  get    'loginPrueba'   => 'sessions#new'
  post   'loginPrueba'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'
  
  get 'receta/new', to: 'receta#alta', as: :altasr
  get 'ingredientes/new'

  resources :usuarios

  root 'sessions#new'


  
end
