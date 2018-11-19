class CreateRecursos < ActiveRecord::Migration[5.2]
  def change
    create_table :recursos do |t|
      t.string :nombre
      t.text :rol

      t.timestamps
    end
  end
end
