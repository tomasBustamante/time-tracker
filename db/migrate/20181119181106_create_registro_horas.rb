class CreateRegistroHoras < ActiveRecord::Migration[5.2]
  def change
    create_table :registro_horas do |t|
      t.timestamp :hora_inicio
      t.timestamp :hora_fin

      t.timestamps
    end
  end
end
