Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :amas
  resources :turus
  resources :items
  resources :users
  get "items/confirm" => "items#confirm"  #idが入る必要あり
  get "items/brand" => "items#brand"
  get "items/category" => "items#category"
end
