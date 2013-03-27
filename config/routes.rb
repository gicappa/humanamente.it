HumanaMENTE::Application.routes.draw do
  devise_for :users

  root :to => 'home#index'
  get 'home' => 'home#home'

  resources :customers
end
