Rails.application.routes.draw do
  get 'welcome/index'

  resources :proyectos do
    resources :requerimientos do
      resources :tareas
    end
  end
  resources :registro_horas
  resources :recursos

  root 'welcome#index'

  get "recursos/new" => "recursos#new"
end
