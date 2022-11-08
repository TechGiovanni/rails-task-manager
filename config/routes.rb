Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # get "/articles", to: "articles#index"
  root to: 'tasks#index', as: :home

  # read all
  get 'tasks', to: 'tasks#index'

  # create new
  get 'tasks/new', to: 'tasks#new', as: :new_task
  post 'tasks', to: 'tasks#create'

  # read one
  get 'tasks/:id', to: 'tasks#show', as: :task

  # 1. update form to edit the task
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  # 2. Send the form
  patch 'tasks/:id', to: 'tasks#update'

  # delete
  delete 'tasks/:id', to: 'tasks#destroy'
end
