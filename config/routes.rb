Rails.application.routes.draw do
  get 'events', to: 'events#index'

  get 'events', to: 'events#show'

  get 'events', to: 'events#new'

  post 'events', to: 'events#create'

  get 'events', to: 'events#edit'

  patch 'events', to: 'events#update'

  delete 'events', to: 'events#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
