class FixRecetaIngsColumnName < ActiveRecord::Migration
  def change
    rename_column :receta_ings, :receta_id, :recetum_id
  end
end
