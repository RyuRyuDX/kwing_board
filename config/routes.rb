Rails.application.routes.draw do
  resources :offers
  root "home#top"

  resources :homes
  resources :apply_posts
  resources :place_posts
  resources :car_posts
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
