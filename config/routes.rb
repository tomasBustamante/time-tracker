Rails.application.routes.draw do
  get 'welcome/index'

  resources :proyectos do
    resources :requerimientos
  end

  root 'welcome#index'
end
