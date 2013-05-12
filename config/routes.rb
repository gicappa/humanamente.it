HumanaMENTE::Application.routes.draw do
  ActiveAdmin.routes(self)

  devise_for :admin_users, ActiveAdmin::Devise.config

  devise_for :users

  root :to => 'home#home'
  get 'home' => 'home#home'

  resources :customers
end
