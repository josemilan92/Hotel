Rails.application.routes.draw do

  resources :estados
  resources :meetings
  resources :pagos
  root 'welcome#index'


  resources :categories
  resources :events
  get 'doble/index'
  resources :sendpros
  resources :promotions do
    resources :sendpros
  end

  #resources :comments
  devise_for :users
  #devise_for :admins
  resources :sends




  get 'login/index'

  get 'login/show'

  get 'panoramica/index'

  get 'panoramica/show'

  get 'virtual/index'

  get 'virtual/registro'

  get 'imagenes/index'

  get 'maps/index'

  get 'welcome/index'

  get 'promotions/index'

  get 'sends/index'

  get 'sendpros/index'

  get 'virtual/prueba'

  get 'hidalgo'=> 'maps#hidalgo'

  get 'iglesia'=> 'maps#iglesia'

  get 'jose' =>'maps#jose'

  get 'dobles' =>'procomments#doble'

  get 'nieves' =>'procomments#dolo'

  get 'dolores' =>'procomments#dolores'

 get 'talavera' =>'procomments#talavera'

  get 'artistas' =>'procomments#artista'

  get 'mysend'=> 'sends#mysend'

  get 'adminho' => 'events#adminho'

  get 'comentarios/reservacion'
  get 'comentarios/promotion'
  get 'comentarios/hotel'

  #post 'virtual/panoramica-2_out.swf'

  resources :comentarios

  resources :hotels
  #resources :hotels
   resources :procomments

  resources :hotels do
    resources :sends
    resources :comments
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html



end
