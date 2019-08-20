Rails.application.routes.draw do
  resources :plants, only: [ :index, :show ]
  devise_for :users
  root to: 'plants#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
