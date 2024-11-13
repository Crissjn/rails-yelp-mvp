Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  resources :restaurants do
    resources :reviews, only: [:new, :create]
  end
end

# Prefix  Verb    URI Pattern            Controller#Action
# restaurants  GET     /restaurants           restaurants#index
#              POST    /restaurants           restaurants#create
# new_restaurant  GET     /restaurants/new       restaurants#new
# edit_restaurant  GET     /restaurants/:id/edit  restaurants#edit
#  restaurant  GET     /restaurants/:id       restaurants#show
#              PATCH   /restaurants/:id       restaurants#update
#              DELETE  /restaurants/:id       restaurants#destroy
