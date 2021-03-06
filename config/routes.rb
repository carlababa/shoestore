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

 resources :shoes do
     resources :reviews
 end

  get 'welcome/index'
  resources :categories do
    resources :shoes  do
      collection do
        get :men
        get :women
        get :kids
      end
    end
     get 'gender/:gender/shoes' => 'shoes#index'
  end


  resources :shoes
    resources :reviews
  # resources :users
  root "welcome#index"
  devise_for :users

end
