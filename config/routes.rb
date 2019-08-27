Rails.application.routes.draw do
  root to: 'pages#home'

  resources :user_tasks, only: [ :index ] do
    put 'mark_as_done_user_task', to: 'user_tasks#mark_as_done', as: :mark_as_done_user_tasks
  end
  resources :plants, only: [ :index, :show ] do

    resources :garden_plants, only: [ :create ]
    resources :tasks, only: [ :index, :show ]
  end

  resources :gardens, only: [:show, :create ]

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
