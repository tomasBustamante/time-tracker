class AddEstadoToTareas < ActiveRecord::Migration[5.2]
  def change
    add_column :tareas, :estado, :string
  end
end
