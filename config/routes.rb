Rails.application.routes.draw do
  
  # namespace :admin do
  #   get 'role_rights/index'
  #   get 'role_rights/show'
  #   get 'role_rights/new'
  #   get 'role_rights/edit'
  #   get 'role_rights/delete'
  # end
  # namespace :admin do
  #   get 'rights/index'
  #   get 'rights/show'
  #   get 'rights/new'
  #   get 'rights/edit'
  #   get 'rights/delete'
  # end
  # namespace :admin do
  #   get 'roles/index'
  #   get 'roles/show'
  #   get 'roles/new'
  #   get 'roles/edit'
  #   get 'roles/delete'
  # end
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register', edit: 'settings' }
  root :to => 'application#index'
  get '/', to: 'application#index'
  get 'profile', to: 'application#user_profile'
  post 'update_profile', to: 'application#update_profile'
  get 'admin', to: 'admin#index'
  get 'admin/users/show_admins', to: 'admin/users#show_user_roles'
  match 'admin/users/add_new' => 'admin/users#assign_role_to_user', :via => :post
  match 'admin/users/unassign_role' => 'admin/users#remove_role_from_user', :via => :delete
  # get 'login/index'
  # get 'login/login'
  # get 'login/forgot_password'
  # get 'register/index'
  # get 'register/register'

  namespace :admin do
  		resources :users
  		resources :restaurants do member do get :delete end end
      resources :orders do member do get :delete end end
      resources :roles do member do get :delete end end
      resources :rights do member do get :delete end end
      resources :cities do member do get :delete end end
      resources :countries do member do get :delete end end
  		resources :states do member do get :delete end end
  end
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
