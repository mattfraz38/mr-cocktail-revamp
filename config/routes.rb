Rails.application.routes.draw do
  get 'welcome/index'

  root 'welcome#index'

  resources :cocktails, only: [ :index, :show, :new, :edit, :create ] do
    resources :doses, only: [ :new, :edit, :create, :destroy ]
  end
end
