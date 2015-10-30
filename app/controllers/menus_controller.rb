class MenusController < ApplicationController
  
  def desayuno
      @recetas =Recetum.where(categoria_rec_id:1).to_a;
      
  end

  def comida
      @recetasCom = Recetum.where(categoria_rec_id:2).to_a;
     
  end

  def cena
      @recetasCen = Recetum.where(categoria_rec_id:3).to_a;
      
  end
  
  def snack
      @recetasSna = Recetum.where(categoria_rec_id:4).to_a;
      
  end
end