Rails.application.routes.draw do
  root to: 'plants#index'

  resources :plants, only: [ :index, :show ] do
    resources :garden_plants, only: [ :create ]
  end

  resources :gardens, only: [:show, :create ]

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
