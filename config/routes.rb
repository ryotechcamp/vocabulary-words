Rails.application.routes.draw do
  devise_for :users
  root to: "keywords#index"
  resources :keywords, only: [:new, :create, :edit, :update, :destroy] do
    resources :tests, only: [:create, :destroy]
  end
  resources :users, only: :show

  resources :rooms, only: [:new, :create, :show, :destroy] do
    resources :messages, only: :create
  end
end
