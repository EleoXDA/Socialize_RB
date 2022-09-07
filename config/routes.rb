Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :users, only: [:index, :show], path: "all_programmers" do
  end

  patch '/chat_pins/:id', to: 'chat_requests#pin_user', as: :pin_user
  resources :chat_requests, only: [:index, :create, :edit, :update]
  resources :chat_rooms, only: :show do
    resources :messages, only: :create
  end
end
