Rails.application.routes.draw do
  get 'welcome/index'

<<<<<<< Updated upstream
=======
  resources :proyectos do
    resources :requerimientos do
      resources :tareas 
        
    end
  end

  resources :recursos
>>>>>>> Stashed changes
  root 'welcome#index'

  get "recursos/new" => "recursos#new"
end
