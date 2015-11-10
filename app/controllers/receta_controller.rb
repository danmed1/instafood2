class RecetaController < ApplicationController
  before_action :set_recetum, only: [:show, :edit, :update, :destroy]

  def favdel
     par = params[:id]
     RecetaUsr.where(usuario_id: session[:user_id], receta_id: par).destroy_all

    redirect_to :misfav
  end

   def addfav
     par = params[:id]
       RecetaUsr.create(usuario_id: session[:user_id], receta_id: par, siCalif: true, calif: 0)

    redirect_to :misfav
   end
  
  def califica
    @rec = RecetaUsr.find_by(receta_id: params[:id], usuario_id: session[:user_id])
    @rec.update(calif: params[:calif])
    
    redirect_to "/receta/"+params[:id]
  end
  # GET /receta
  # GET /receta.json
  def index
    @receta = Recetum.all
  end

  # GET /receta/1
  # GET /receta/1.json
  def show
    @receta = Recetum.find(params[:id])
    @categoria = CategoriaRec.find(Recetum.find(params[:id]).categoria_rec_id)
    @ingredientes = Ingrediente.order('ingredientes.nombre ASC').all
    @rec = RecetaUsr.find_by(receta_id: params[:id], usuario_id: session[:user_id])
      
  end

  # GET /receta/new
  def new
    @recetum = Recetum.new
    @ingredientes = Ingrediente.order('ingredientes.nombre ASC').all
    @categorias = CategoriaRec.all
    
  end

  # GET /receta/1/edit
  def edit
    @ingredientes = Ingrediente.order('ingredientes.nombre ASC').all
  end
  
  def busqueda
   # @projects = Recetum.search(params[:search])
    @recetas = Recetum.where(" nombre like ?",'%'+params[:search]+'%')
  end

  # POST /receta
  # POST /receta.json
  def create
    @recetum = Recetum.new(recetum_params)
    respond_to do |format|
      if @recetum.save
        #@ingredientes=@recetum.receta_ings.create(receta_ings_params)
        #@ingredientes=@recetum.receta_ings.create(recetum_params[:receta_ings_parameters])
        #@ingredientes=RecetaIng.new(recetum_params[:receta_ings_parameters])
        #@ingredientes.save
       # @ingredientes.each do |t|
        #t.save
        #end
       # ingredientes=JSON.parse params[:ingredientes]
        #ingredientes.each do | ings |
         # ingrediente=ReceteIng.new()
        #end
        
        format.html { redirect_to @recetum, notice: 'Recetum was successfully created.' }
        format.json { render :show, status: :created, location: @recetum }
        
      else
        format.html {  redirect_to @recetum, notice: 'Errores' }
        format.json { render json: @recetum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /receta/1
  # PATCH/PUT /receta/1.json
  def update
    respond_to do |format|
      if @recetum.update(recetum_params)
        format.html { redirect_to @recetum, notice: 'Recetum was successfully updated.' }
        format.json { render :show, status: :ok, location: @recetum }
      else
        format.html { render :edit }
        format.json { render json: @recetum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /receta/1
  # DELETE /receta/1.json
  def destroy
    @recetum.destroy
    respond_to do |format|
      format.html { redirect_to receta_url, notice: 'Recetum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recetum
      @recetum = Recetum.find(params[:id])
      #@recetum = Recetum.all
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def recetum_params
      params[:usuario_id]=session[:user_id]
      #params.require(:recetum).permit(:nombre,:pasos, :tiempo_prep, :porciones, :usuario_id,:foto,:descripcion, :categoria_rec_id, :ingredientes)
      params.require(:recetum).permit(:nombre,:pasos, :tiempo_prep, :porciones, :usuario_id,:foto,:descripcion, :categoria_rec_id,:receta_ings_parameters =>[:receta_id,:ingrediente_id,:cantidad,:unidad])
      
    end
    def receta_ings_params
    #params.require(:recetum).permit(:receta_ings =>[:recetum_id,:ingrediente_id,:cantidad,:unidad])
    params.require(:recetum).permit(:all)
    end
end
