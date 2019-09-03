Rails.application.routes.draw do
  # CRUD
  # frozen_string_literal: true
  # index
  get 'tasks', to: 'tasks#index'
  # create
  post 'tasks', to: 'tasks#create', as: 'create'
  # new
  get 'tasks/new', to: 'tasks#new', as: 'new'
  # edit
  get 'tasks/:id/edit', to: 'tasks#edit', as: 'edit'
  # show
  get 'tasks/:id', to: 'tasks#show', as: 'task'
  # update
  patch 'tasks/:id', to: 'tasks#update'
  # destroy
  delete 'tasks/:id', to: 'tasks#destroy'
end
