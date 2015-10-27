class CreateCategoriaRecs < ActiveRecord::Migration
  def change
    create_table :categoria_recs do |t|
      t.string :nombre

      t.timestamps null: false
    end
  end
end
