Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: "cocktails#home"
  # A user can see the list of cocktails
  # GET "cocktails"
  resources :cocktails, only: [:index, :new, :create, :show] do
  resources :doses, only: [:new, :create]
  end

  resources :doses, only: [ :destroy ]
end
