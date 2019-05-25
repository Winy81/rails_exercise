Rails.application.routes.draw do
  
  devise_for :users
  root to: "stationeries#index"
  resources :stationeries

end
