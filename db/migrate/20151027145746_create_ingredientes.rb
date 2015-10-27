class CreateIngredientes < ActiveRecord::Migration
  def change
    create_table :ingredientes do |t|
      t.string :nombre
      t.string :imagen
      t.integer :categoria_ing_id

      t.timestamps null: false
    end
  end
end
