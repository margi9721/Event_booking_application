Rails.application.routes.draw do
  # get 'notifications/index'
  # get 'notifications/new'
  # get 'events/index'
  # get 'events/new'
  # get 'categories/index'
  # get 'categories/new'
  # get 'roles/index'
  # get 'locations/index'
  # get 'locations/new'
  # get 'event/index'
  # get 'event/new'
  

  root "mains#index"
  resources :mains
  resources :users do
    resources :bookings do
      put 'confirm'
      put 'cancel'
    end
  end

  resources :categories, :events, :roles, :locations, :cities, :notifications
  get "/bookings", to: "bookings#index", as: "bookings"
  get "/bookings/show", to: "bookings#show", as: "bookings_show"

end 
