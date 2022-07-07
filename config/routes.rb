Rails.application.routes.draw do

  resources :restaurants, only: [:index, :new, :create, :show] do
    resources :reviews, only: [:create]
  end









  #resources :reviews

  # A visitor can add a new review to a restaurant
  # get    "restaurants/:id/reviews/new", to: "restarant#review#new"
  # post   "restaurants/:id/reviews", to: ""


  #get    "restaurants",          to: "restaurants#index"

  #get    "restaurants/new",      to: "restaurants#new",  as: :new_restaurant
  #post   "restaurants",          to: "restaurants#create"

  # NB: The `show` route needs to be *after* `new` route.
  # get    "restaurants/:id",      to: "restaurants#show", as: :restaurant

end
