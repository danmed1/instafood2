class CreateRecetaUsrs < ActiveRecord::Migration
  def change
    create_table :receta_usrs do |t|
      t.integer :usuario_id
      t.integer :receta_id
      t.integer :calif
      t.boolean :siCalif

      t.timestamps null: false
    end
  end
end
