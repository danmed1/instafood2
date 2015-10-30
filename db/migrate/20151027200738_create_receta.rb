class CreateReceta < ActiveRecord::Migration
  def change
    create_table :receta do |t|
      t.string :nombre
      t.text :pasos
      t.string :tiempo_prep
      t.string :integer
      t.integer :porciones
      t.integer :usuario_id
      t.string :categoria_rec_id
      t.string :integer

      t.timestamps null: false
    end
  end
end
