Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get "profile", to: "users#show", as: "profile"
  get "profile/edit", to: "users#edit", as: "profile_edit"
  get "dashboard", to: "static#dashboard", as: "dashboard"
  resources :users, only: [:index, :show, :edit]
  resources :events
end
