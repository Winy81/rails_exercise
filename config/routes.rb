Rails.application.routes.draw do
  
  root to: "stationeries#index"
  resources :stationeries

end
