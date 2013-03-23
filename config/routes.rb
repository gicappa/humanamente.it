HumanaMENTE::Application.routes.draw do
  devise_for :users

  root :to => 'home#index'
  get 'home' => 'home#index2'

  resources :customer, :only => [:create, :index]
end
