Rails.application.routes.draw do

  devise_for :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'items/result'

  resources :users, only: [:index, :create, :show, :edit, :update, :destroy]
  resources :items
  resources :stores

  root 'homes#top'
  get 'about', to: 'homes#about'

end
