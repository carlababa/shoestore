Rails.application.routes.draw do
  # get 'user/index'
  #
  # get 'user/show'
  #
  # get 'categories/index'
  #
  # get 'welcome/index'

  resources :shoes
  # resources :users
  root "welcome#index"
  devise_for :users

end
