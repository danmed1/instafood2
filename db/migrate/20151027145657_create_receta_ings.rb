class CreateRecetaIngs < ActiveRecord::Migration
  def change
    create_table :receta_ings do |t|
      t.integer :receta_id
      t.integer :ingrediente_id
      t.float :cantidad
      t.string :unidad

      t.timestamps null: false
    end
  end
end
