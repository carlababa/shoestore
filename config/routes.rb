Rails.application.routes.draw do
  resources :reviews
  get 'reviews/index'
  get 'user_reviews/:user_id' => 'reviews#user', as: :user_reviews

  get '/cart' => 'cart#index'
  get '/cart/clear' => 'cart#clearCart'
  get '/cart/:id'=> 'cart#add'
  delete '/cart/:id' => 'cart#destroy'

  get 'user/index'

  get 'user/show'



 get 'gender/:gender/shoes' => 'shoes#index'



  get 'welcome/index'
  resources :categories do
    resources :shoes
     get 'gender/:gender/shoes' => 'shoes#index'
  end


  resources :shoes
    resources :reviews
  # resources :users
  root "welcome#index"
  devise_for :users

end
