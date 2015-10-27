class AddProcedimientoToRecetum < ActiveRecord::Migration
  def change
    add_column :receta, :procedimiento, :text
  end
end
