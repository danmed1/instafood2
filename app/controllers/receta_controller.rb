class RecetaController < ApplicationController
  before_action :set_recetum, only: [:show, :edit, :update, :destroy]

   def addfav
    RecetaUsr.create(usuario_id: session[:user_id], receta_id: params[:id])
    redirect_to :misfav
   end
  
  # GET /receta
  # GET /receta.json
  def index
    @receta = Recetum.all
  end

  # GET /receta/1
  # GET /receta/1.json
  def show
    @categoria = CategoriaRec.find(Recetum.find(params[:id]).categoria_rec_id)
    @ingredientes = Ingrediente.order('ingredientes.nombre ASC').all
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
    @recetas = Recetum.where(" nombre like ?",'%'+params[:search]+'%')
  end

  # POST /receta
  # POST /receta.json
  def create
    @recetum = Recetum.new(recetum_params)
  
    respond_to do |format|
      if @recetum.save
       # ingredientes=JSON.parse params[:ingredientes]
        #ingredientes.each do | ings |
         # ingrediente=ReceteIng.new()
        #end
        
        format.html { redirect_to @recetum, notice: 'Recetum was successfully created.' }
        format.json { render :show, status: :created, location: @recetum }
        flash.now[:notice]="test";
      else
        format.html { render :new }
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
      params.require(:recetum).permit(:nombre,:pasos, :tiempo_prep, :porciones, :usuario_id,:foto,:descripcion, :categoria_rec_id)
      
    end
end
