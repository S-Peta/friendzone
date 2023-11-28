Rails.application.routes.draw do
  devise_for :users
  root to: "events#index"

  resources :events, only: %i[new create index show delete]

end
