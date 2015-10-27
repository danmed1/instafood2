class CreateReceta < ActiveRecord::Migration
  def change
    create_table :receta do |t|
      t.string :nombre
      t.text :procedimiento
      t.integer :tiempo_preparacion
      t.integer :porciones
      t.integer :usuario_id

      t.timestamps null: false
    end
  end
end
