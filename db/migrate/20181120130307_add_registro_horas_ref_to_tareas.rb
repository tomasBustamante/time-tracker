class AddRegistroHorasRefToTareas < ActiveRecord::Migration[5.2]
  def change
    add_reference :registro_horas, :tarea, foreign_key: true
  end
end
