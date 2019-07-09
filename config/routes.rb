Rails.application.routes.draw do
  # VERB + PATH + CONTROLLER#ACTION
  get 'restaurants', to: 'restaurants#index'
  post 'restaurants', to: 'restaurants#create'

  get 'restaurants/new', as: :new_restaurant
  get 'restaurants/:id', to: 'restaurants#show', as: :restaurant
  patch 'restaurants/:id', to: 'restaurants#update'
  delete 'restaurants/:id', to: 'restaurants#destroy'

  get 'restaurants/:id/edit', to: 'restaurants#edit', as: :edit_restaurant
end
