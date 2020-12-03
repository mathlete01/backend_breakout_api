Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  

  resources :players
  get "players", to: "players#index"
  post "players", to: "players#create"
  patch "players", to: "players#update"
  

end
