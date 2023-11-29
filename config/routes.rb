Rails.application.routes.draw do
  root to: "events#index"

  devise_for :users

  resources :events, only: %i[new create index show delete] do
    get "chat", to: "events#chat"
    resources :messages, only: %i[new create]

    collection do
      get :filter
    end



    resources :participants, only: %i[new create]
  end
end
