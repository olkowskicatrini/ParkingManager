Rails.application.routes.draw do
  resources :vehicles
    resources :parking_spots
    root 'parking_spots#index'
    resources :vehicles
    get 'new_vehicle_for_spot/:spot_number', to: 'vehicles#new_for_spot', as: :new_vehicle_for_spot
    Rails.application.routes.draw do
      root 'dashboard#index'
    end
  end
