Rails.application.routes.draw do
  devise_for :users
  root to: "keywords#index"
  resources :keywords, only: [:new, :create, :show] 
end
