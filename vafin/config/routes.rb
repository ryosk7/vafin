Rails.application.routes.draw do
  get 'joinings/index'

  get 'joinings/new'

  get 'joinings/create'

  get 'joinings/show'

  get 'joinings/destroy'

  get 'admins/index'

  get 'admins/show'

  get 'admins/accept'

  get 'admins/reject'

  get 'events', to: 'events#index'

  post 'events', to: 'events#create'

  get 'events/:id', to: 'events#show'

  get 'events/:id/edit', to: 'events#edit'

  get 'events/new', to: 'events#new'

  get 'users/new', to: 'users#new'

  post 'users', to: 'users#create'

  get 'users/:id', to: 'users#show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
