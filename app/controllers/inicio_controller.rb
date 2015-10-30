class InicioController < ApplicationController
  def index
  end
  
  def userName
    session[:nombre] = @usuarios.nombre
    redirect_to :inicio
  end
  
end
