Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: "users/omniauth_callbacks", registrations: "registrations"}

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'items#index'

  get "items/confirm" => "items#confirm"  #idが入る必要あり
  get "items/confirm/done" => "items#done"  #idが入る必要あり
  get "items/brand" => "items#brand"
  get "search" => "search#search"
  get "search/detail" => "search#detail"
  get "users/login" => "users#login"
  get "users/sample" => "users#sample"
  get "users/logout" => "users#logout"
  get "users/mail" => "users#mail"
  get "users/phone" => "users#phone"
  get "users/address" => "users#address"
  get "users/purchase" => "users#purchase"
  get "users/complete" => "users#complete"
  get "users/identification" => "users#identification"  #idが入る必要あり
  get "users/card" => "users#card"
  get '*path', controller: 'application', action: 'render_404'
  resources :items do
    get 'confirm', to: 'items#confirm', on: :member
    get 'confirm/done', to: 'items#done', on: :member
    post 'confirm/pay', to: 'items#pay', on: :member
    post 'confirm/buy', to: 'items#buy', on: :member
    resources :comments
  end
  resources :users do
    resources :myitems, only: [:show, :edit, :destroy]
  end

  resources :categories, only: [:index, :show]

end
