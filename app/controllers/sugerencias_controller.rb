class SugerenciasController < ApplicationController
  def sugerencias
    @ingredientes = Ingrediente.order('ingredientes.nombre ASC').all
    @recetas = Recetum.all
    @recetaIng = RecetaIng.all
  end
end