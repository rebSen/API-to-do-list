Rails.application.routes.draw do
  # resources :tasks, only: [:index, :show, :create]
  get 'tasks', to: 'tasks#index'
  get 'tasks/:id', to: 'tasks#show'
  post 'tasks', to: 'tasks#create'
  put 'tasks/:id', to: 'tasks#update'
  delete 'tasks/:id', to: 'tasks#delete'
  # get 'tasks/show'
  # get 'tasks/create'
  # get 'tasks/update'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
