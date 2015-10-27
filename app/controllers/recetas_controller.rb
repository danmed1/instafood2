class RecetasController < ApplicationController
  def altas
    @receta=Recetum.new
  end

  def bajas
  end

  def actualziar
  end
  
  def ver
    @recetum=Recetum.all
    #@receta = Route.find(params[:id])
    
  end
  
  def create
    @receta = Recetum.new(receta_params)
    
  end
  
  private 
  def receta_params
    params.require(:receta).permit(:nombre,:descripcion,:porciones,:tiempoPrep,:fechaCrecion,:tipo,:image)
  end
end
