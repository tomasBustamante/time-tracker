Rails.application.routes.draw do
  get 'welcome/index'

  resources :proyectos do
    resources :requerimientos do
      resources :tareas
    end
  end
  resources :registro_horas

  root 'welcome#index'
end
