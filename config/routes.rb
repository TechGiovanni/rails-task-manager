Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # get "/articles", to: "articles#index"
  root to: 'tasks#index', as: :home
  get 'index', to: 'tasks#index'
  get 'show/:id', to: 'tasks#show', as: :task
end
