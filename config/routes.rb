HumanaMENTE::Application.routes.draw do
  ActiveAdmin.routes(self)

  devise_for :admin_users, ActiveAdmin::Devise.config

  devise_for :users

  root :to => 'home#index'
  get 'home' => 'home#home'

  resources :customers
end
