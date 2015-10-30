class CreateIngredientes < ActiveRecord::Migration
  def change
    create_table :ingredientes do |t|
      t.string :nombre
      t.string :foto

      t.timestamps null: false
    end
  end
end
