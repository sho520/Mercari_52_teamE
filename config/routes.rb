Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :amas
  resources :turus
  resources :tech_camp_mentor_abes
  resources :items
  resources :users
  get "items/confirm" => "items#confirm"  #idが入る必要あり

end
