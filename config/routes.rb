Rails.application.routes.draw do
  devise_for :users
  root to: "keywords#index"
  resources :keywords, only: [:new, :create] do
    resources :tests, only: [:create, :destroy]
  end
  resources :users, only: :show
end
