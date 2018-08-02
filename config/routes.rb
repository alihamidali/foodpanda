Rails.application.routes.draw do
  devise_for :users
  root :to => 'application#index'
  get 'login/index'
  get 'login/login'
  get 'login/forgot_password'
  get 'register/index'
  get 'register/register'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
