Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get 'restaurants', to: 'restaurants#index'

  # get 'restuarants/new', to: 'restaurants#new'
  # post 'restaurants', to: 'resaturants#create'

  # get 'resaurants/:id', to: 'restaurants#show'

  resources :restaurants, only: [:index, :new, :create, :show] do
    resources :reviews, only: [:new, :create]
  end

  # get 'restaurants/:restaurant_id/reviews/new', to: 'reviews#new'
  # post 'restaurants/:restaurant_id/reviews', to: 'reviews#create'
end
