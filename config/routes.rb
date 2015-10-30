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
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'cuenta#login'


  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
