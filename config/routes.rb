Rails.application.routes.draw do
  get 'welcome/index'

  root 'welcome#index'

  resources :cocktails#, only: [ :index, :show, :new, :edit, :create ]
  resources :ingredients
end
