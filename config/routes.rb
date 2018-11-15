Rails.application.routes.draw do
  get 'welcome/index'

  resources :proyectos

  root 'welcome#index'
end
