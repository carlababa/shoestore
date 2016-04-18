Rails.application.routes.draw do
  get 'categories/index'

  get 'welcome/index'

  resources :shoes
  root "welcome#index"
  devise_for :users

end
