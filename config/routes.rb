Rails.application.routes.draw do
  resources :flights
  resources :airports
  resources :bookings

  Rails.application.routes.draw do
    get :find_order, :to => 'orders#find_order'
    post :create_order, :to => 'orders#create_order'
    post :capture_order, :to => 'orders#capture_order'
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'flights#index'
end
