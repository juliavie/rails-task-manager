Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # create - receive filled out form
  get "tasks/new", to: "tasks#new", as: :new_task
  # create - receive filled out form
  post "tasks", to: "tasks#create"

  # read - read all tasks
  get "tasks", to: "tasks#index"
  # read - find one specific task
  get "tasks/:id", to: "tasks#show", as: :task

  # update - get filled form
  get "tasks/:id/edit", to: "tasks#edit", as: :edit_task
  # update - receive updated form
  patch "tasks/:id", to: "tasks#update"

  #delete
  delete "tasks/:id", to: "tasks#destroy"
end
