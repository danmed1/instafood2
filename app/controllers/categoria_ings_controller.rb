class CategoriaIngsController < ApplicationController
  before_action :set_categoria_ing, only: [:show, :edit, :update, :destroy]

  # GET /categoria_ings
  # GET /categoria_ings.json
  def index
    @categoria_ings = CategoriaIng.all
  end

  # GET /categoria_ings/1
  # GET /categoria_ings/1.json
  def show
  end

  # GET /categoria_ings/new
  def new
    @categoria_ing = CategoriaIng.new
  end

  # GET /categoria_ings/1/edit
  def edit
  end

  # POST /categoria_ings
  # POST /categoria_ings.json
  def create
    @categoria_ing = CategoriaIng.new(categoria_ing_params)

    respond_to do |format|
      if @categoria_ing.save
        format.html { redirect_to @categoria_ing, notice: 'Categoria ing was successfully created.' }
        format.json { render :show, status: :created, location: @categoria_ing }
      else
        format.html { render :new }
        format.json { render json: @categoria_ing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /categoria_ings/1
  # PATCH/PUT /categoria_ings/1.json
  def update
    respond_to do |format|
      if @categoria_ing.update(categoria_ing_params)
        format.html { redirect_to @categoria_ing, notice: 'Categoria ing was successfully updated.' }
        format.json { render :show, status: :ok, location: @categoria_ing }
      else
        format.html { render :edit }
        format.json { render json: @categoria_ing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /categoria_ings/1
  # DELETE /categoria_ings/1.json
  def destroy
    @categoria_ing.destroy
    respond_to do |format|
      format.html { redirect_to categoria_ings_url, notice: 'Categoria ing was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_categoria_ing
      @categoria_ing = CategoriaIng.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def categoria_ing_params
      params.require(:categoria_ing).permit(:nombre)
    end
end
