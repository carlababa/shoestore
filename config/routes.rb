Rails.application.routes.draw do

  get '/cart' => 'cart#index'
  get '/cart/clear' => 'cart#clearCart'
  get '/cart/:id'=> 'cart#add'

  get 'user/index'

  get 'user/show'

  get 'categories/index'

  get 'welcome/index'


  resources :shoes
  # resources :users
  root "welcome#index"
  devise_for :users

end
