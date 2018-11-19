class CreateTareas < ActiveRecord::Migration[5.2]
  def change
    create_table :tareas do |t|
      t.string :descripcion
      t.integer :horas_estimadas
      t.integer :horas_cargadas
      t.date :fecha
      t.string :empleado
      t.references :requerimiento, foreign_key: true

      t.timestamps
    end
  end
end
