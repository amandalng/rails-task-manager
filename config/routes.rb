Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # add a new task
  get 'tasks/new', to: 'tasks#new' # view GETS info for new task
  post 'tasks', to: 'tasks#create' # view POSTS inputs to create a task

  # list tasks
  get 'tasks', to: 'tasks#index'

  # view details of a task
  get 'tasks/:id', to: 'tasks#show', as: 'task'

  # edit a task
  get 'tasks/:id/edit', to: 'tasks#edit', as: 'edit_task' # view GETS info for task updates
  patch 'tasks/:id', to: 'tasks#update' # view POSTS updated task details

  # remove a task
  delete 'tasks/:id', to: 'tasks#destroy'
end
