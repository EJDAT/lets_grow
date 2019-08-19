Rails.application.routes.draw do
  get 'plants/index'
  get 'plants/show'
  devise_for :users
  root to: 'plants#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
