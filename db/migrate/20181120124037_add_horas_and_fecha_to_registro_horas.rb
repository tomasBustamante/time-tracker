class AddHorasAndFechaToRegistroHoras < ActiveRecord::Migration[5.2]
  def change
    add_column :registro_horas, :fecha, :date
    add_column :registro_horas, :horas, :integer
    add_column :registro_horas, :recurso, :string
    remove_column :registro_horas, :hora_inicio, :timestamp
    remove_column :registro_horas, :hora_fin, :timestamp
  end
end
