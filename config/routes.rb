Rails.application.routes.draw do

  get '/cart' => 'cart#index'
  get '/cart/clear' => 'cart#clearCart'
  get '/cart/:id'=> 'cart#add'

  get 'user/index'

  get 'user/show'


 get 'gender/:gender/shoes' => 'shoes#index'



  get 'welcome/index'
  resources :categories do
    resources :shoes
     get 'gender/:gender/shoes' => 'shoes#index'
  end


  resources :shoes
  # resources :users
  root "welcome#index"
  devise_for :users

end
