Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'items#index'

  get "items/confirm" => "items#confirm"  #idが入る必要あり
  get "items/confirm/done" => "items#done"  #idが入る必要あり
  get "items/brand" => "items#brand"
  get "items/category" => "items#category"
  get "users/login" => "users#login"
  get "users/phone" => "users#phone"
  get "users/address" => "users#address"
  get "users/purchase" => "users#purchase"
  get "users/complete" => "users#complete"
  resources :amas
  resources :turus
  resources :items
  resources :users
end
