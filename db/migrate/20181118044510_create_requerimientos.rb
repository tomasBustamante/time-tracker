class CreateRequerimientos < ActiveRecord::Migration[5.2]
  def change
    create_table :requerimientos do |t|
      t.string :nombre
      t.text :descripcion
      t.references :proyecto, foreign_key: true

      t.timestamps
    end
  end
end
