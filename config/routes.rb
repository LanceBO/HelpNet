Rails.application.routes.draw do
  get "/chatroom", to: "chatrooms#show"
  get "/sub_email", to: "pages#sub_email"
  get "/sub_internet", to: "pages#sub_internet"
  get "/solution", to: "solutions#index"
  get "/tickets/:id", to: "tickets#show", as: "ticket"
  post "/tickets", to: "tickets#create", as: "test"
  devise_for :users
  root to: "pages#home"
  resources :issues do
    #resources :tickets, except: :create
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :trainings
  resources :chatrooms, only: :show do
    resources :messages, only: :create
  end
end
