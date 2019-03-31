Rails.application.routes.draw do

  devise_for :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'items/result'

  resources :users, only: [:index, :create, :show, :edit, :update, :destroy]

  resources :items, only: [:new, :create, :show, :edit, :update, :destroy] do
    get "search", on: :collection
  end

  resources :stores
  resources :tags, only: [:create, :destroy]

  get 'about', to: 'homes#about'
  get 'admin', to: 'homes#admin'
  root 'homes#top'

end
