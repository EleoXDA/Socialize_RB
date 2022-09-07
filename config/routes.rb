Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :users, only: [:index, :show], path: "all_programmers" do
  end
  resources :chat_requests, only: [:edit, :update, :create, :destroy]
  get '/chat_pins/:id', to: 'ChatRequests#pin_user', as: :pin_user
  resources :chat_rooms, only: :show do
    resources :messages, only: :create
  end
end
