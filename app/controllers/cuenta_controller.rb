class CuentaController < ApplicationController
  def login
    #render :layouts=>nil
    render :layout =>'general'
  end
  
  def misrec
    @receta = Recetum.order("created_at DESC").where(usuario_id: session[:user_id])

  end
  
  def misfav
    @recetas = RecetaUsr.order("calif DESC").where(usuario_id: session[:user_id], siCalif: true)
    @receta = []
    @recetas.each do |rec|
      aux = Recetum.find(rec.receta_id)
      @receta.push aux
    end
  end
  
  
end


