Rails.application.routes.draw do
  # CRUD
  # frozen_string_literal: true
  # index
  get 'tasks', to: 'tasks#index'
  # create
  post 'tasks', to: 'tasks#create'
  # new
  get 'tasks/new', to: 'tasks#new'
  # edit
  get 'tasks/:id/edit', to: 'tasks#edit'
  # show
  get 'tasks/:id', to: 'tasks#show'
  # update
  patch 'restaurants/:id', to: 'restaurants#update'
  # destroy
  delete 'tasks/:id', to: 'tasks#destroy'
end
