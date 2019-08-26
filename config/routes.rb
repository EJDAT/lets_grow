Rails.application.routes.draw do
  root to: 'pages#home'
  resources :user_tasks, only: [ :index ]
  resources :plants, only: [ :index, :show ] do

    resources :garden_plants, only: [ :create ]
    resources :tasks, only: [ :index, :show ]
  end

  resources :gardens, only: [:show, :create ]

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
