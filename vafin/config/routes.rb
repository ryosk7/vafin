Rails.application.routes.draw do

  devise_for :users, :controllers => {
    :registrations => 'users/registrations',
    :sessions => 'users/sessions'
  }

  devise_scope :user do
    get "sign_in", :to => "users/sessions#new"
    get "sign_out", :to => "users/sessions#destroy"
  end

  root to: 'pages#home'

  get "events/admin_list", to: "events#admin_list"

  resources :events, only:[:index, :create, :show, :edit, :new] do
    resources :joinings, only:[:new, :create]
  end

  resources :joinings, only:[:index, :show, :destroy]
  resources :admins, only:[:index, :show] do
    member do
      patch :accept
      patch :reject
    end
  end

  get 'users/new', to: 'users#new'

  post 'users', to: 'users#create'

  get 'users/:id', to: 'users#show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
