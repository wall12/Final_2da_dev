Rails.application.routes.draw do
  get 'home/index'
  #get 'home/errorlogin'
  devise_for :users
  root to: 'productos#index'
  get 'productos', to:'productos#index'
  get 'productos/new'
  post 'productos/new', to: 'productos#create', as: 'productos_new_post'  
  get 'productos/edit/:id ', to: 'productos#edit', as: 'productos_edit'
  put 'productos/edit/:id' , to: 'productos#update', as: 'productos_update'
  delete 'productos/delete/:id' , to: 'productos#destroy', as: 'productos_delete'
  
    
 
  #post 'productos/edit/:id' , to: 'productos#update', as: 'productos_update'  
 
  
 # put 'productos/edit/:id' , to: 'productos#update', as: 'productos_update'
  #get 'tipo/index'
  #get 'tipo/new'
  #get 'tipo/create'
  #get 'tipo/edit'
  #get 'tipo/update'
  #get 'tipo/destroy'
  #get 'rubros/index'
  get 'rubros', to:'rubros#index'
  get 'rubros/new'
  post 'rubros/new', to: 'rubros#create', as: 'rubros_new_post'
  get 'rubros/edit/:id ', to: 'rubros#edit', as: 'rubros_edit'
  put 'rubros/edit/:id' , to: 'rubros#update', as: 'rubros_update'
  delete 'rubros/delete/:id' , to: 'rubros#destroy', as: 'rubros_delete'
  #get 'rubros/create'
  #get 'rubros/edit'
  #get 'rubros/update'
  #et 'rubros/destroy'
  get 'marcas', to:'marcas#index'
  get 'marcas/new'
  post 'marcas/new', to: 'marcas#create', as: 'marcas_new_post'
  #get 'marcas/index'
  get 'marcas/edit/:id ', to: 'marcas#edit', as: 'marcas_edit'
  put 'marcas/edit/:id' , to: 'marcas#update', as: 'marcas_update'
  delete 'marcas/delete/:id' , to: 'marcas#destroy', as: 'marcas_delete'
  #get 'marcas/create'
  #get 'marcas/edit'
  #get 'marcas/update'
  #get 'marcas/destroy'
  #get 'productos/index'
  
  
  #get 'productos/edit'
  #get 'productos/update'
  #get 'productos/delete'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
