Rails.application.routes.draw do
  get "/chatroom", to: "chatrooms#show"
  get "/ticket", to: "tickets#show"
  devise_for :users
  root to: "pages#home"
  resources :issues do
    resources :tickets
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :chatrooms, only: :show do
    resources :messages, only: :create
  end
end
