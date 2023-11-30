Rails.application.routes.draw do
  get 'stimulus/navbar'
  root to: "events#index"

  devise_for :users

  resources :events, only: %i[new create index show delete] do
    get "chat", to: "events#chat"
    resources :messages, only: %i[new create]

    collection do
      get :filter, :user
    end

    resources :participants, only: %i[create]
  end

  resources :participants, only: %i[destroy]
end
