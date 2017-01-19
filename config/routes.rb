Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  resources :posts

  root 'base#index'

  get 'others/404'
  get 'others/construction'
end
