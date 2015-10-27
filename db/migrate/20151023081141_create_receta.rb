class CreateReceta < ActiveRecord::Migration
  def change
    create_table :receta do |t|
      t.string :nombre
      t.text :descripcion
      t.integer :porciones
      t.float :tiempoPrep
      t.datetime :fechaCreacion
      t.string :tipo
      t.string :image
      t.text :procedimiento

      t.timestamps null: false
    end
  end
end
