Rails.application.routes.draw do
  
  devise_for :users, path: '', path_names: {sign_in:'login',sign_out:'logut',sign_up:'register'}
  root to: "stationeries#index"
  resources :stationeries
  resources :users, only: [:index, :show]

end
