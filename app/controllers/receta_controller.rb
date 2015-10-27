class RecetaController < ApplicationController
  before_action :set_recetum, only: [:show, :edit, :update, :destroy]

  # GET /receta
  # GET /receta.json
  
  def index
    @receta = Recetum.all
  end

  # GET /receta/1
  # GET /receta/1.json
  def show
  end

  # GET /receta/new
  def new
    @recetum = Recetum.new
  end

  # GET /receta/1/edit
  def edit
  end

  # POST /receta
  # POST /receta.json
  def create
    @recetum = Recetum.new(recetum_params)

    respond_to do |format|
      if @recetum.save
        format.html { redirect_to verReceta_path, notice: 'Recetum was successfully created.' }
        format.json { render :show, status: :created, location: @recetum }
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
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def recetum_params
      params.require(:recetum).permit(:nombre, :descripcion, :porciones, :tiempoPrep, :fechaCreacion, :tipo, :image, :procedimiento)
    end
end
