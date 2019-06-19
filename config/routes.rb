Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'items#index'

  get "items/confirm" => "items#confirm"  #idが入る必要あり
  get "items/confirm/done" => "items#done"  #idが入る必要あり
  get "items/brand" => "items#brand"
  get "items/category" => "items#category"
  get "search" => "search#search"
  get "users/login" => "users#login"
  get "users/sample" => "users#sample"
  get "users/logout" => "users#logout"  #idが入る必要あり
  get "users/phone" => "users#phone"
  get "users/address" => "users#address"
  get "users/purchase" => "users#purchase"
  get "users/complete" => "users#complete"
  get "users/identification" => "users#identification"  #idが入る必要あり
  get "users/card" => "users#card"  #idが入る必要あり
  resources :items
  resources :users
end
