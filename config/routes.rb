Rails.application.routes.draw do
  
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
  		resources :restaurants do member do get :delete end end
      resources :orders do member do get :delete end end
      resources :cities do member do get :delete end end
      resources :countries do member do get :delete end end
  		resources :states do member do get :delete end end
  end
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
