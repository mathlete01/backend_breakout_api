Rails.application.routes.draw do

  resources :players
  get "players", to: "players#index"
  post "players", to: "players#create"
  patch "players", to: "players#update"

  get "games", to: "games#index"
  post "games", to: "games#create"
  patch "games", to: "games#update"

end
