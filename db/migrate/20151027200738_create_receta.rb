class CreateReceta < ActiveRecord::Migration
  def change
    create_table :receta do |t|
      t.string :nombre
      t.text :pasos
      t.integer :tiempo_prep
      t.integer :porciones
      t.integer :usuario_id
      t.string :foto
      t.string :descripcion
      t.integer :categoria_rec_id

      t.timestamps null: false
    end
  end
end
