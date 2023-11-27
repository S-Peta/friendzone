Rails.application.routes.draw do
  devise_for :users
  root to: "events#index"

  get "up" => "rails/health#show", as: :rails_health_check

  resources :events, only: %i[new create index show delete]
  
end
