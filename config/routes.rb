Rails.application.routes.draw do
  # get 'cities/index'
  # get 'cities/show'
  # get 'cities/new'
  # get 'cities/edit'
  # get 'cities/delete'
  # get 'states/index'
  # get 'states/show'
  # get 'states/new'
  # get 'states/edit'
  # get 'states/delete'
  # get 'countries/index'
  # get 'countries/show'
  # get 'countries/new'
  # get 'countries/edit'
  # get 'countries/delete'
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register', edit: 'settings' }
  root :to => 'application#index'
  get '/', to: 'application#index'
  get 'profile', to: 'application#user_profile'
  post 'update_profile', to: 'application#update_profile'
  get 'admin', to: 'admin#index'
  # get 'login/index'
  # get 'login/login'
  # get 'login/forgot_password'
  # get 'register/index'
  # get 'register/register'

  namespace :admin do
  		resources :users 
  		resources :restaurants
      resources :orders
      resources :cities
      resources :countries do member do get :delete end end
  		resources :states
  end
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
