class CreateCategoriaIngs < ActiveRecord::Migration
  def change
    create_table :categoria_ings do |t|
      t.string :nombre

      t.timestamps null: false
    end
  end
end