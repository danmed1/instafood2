class CategoriaRecsController < ApplicationController
  before_action :set_categoria_rec, only: [:show, :edit, :update, :destroy]

  # GET /categoria_recs
  # GET /categoria_recs.json
  def index
    @categoria_recs = CategoriaRec.all
  end

  # GET /categoria_recs/1
  # GET /categoria_recs/1.json
  def show
  end

  # GET /categoria_recs/new
  def new
    @categoria_rec = CategoriaRec.new
  end

  # GET /categoria_recs/1/edit
  def edit
  end

  # POST /categoria_recs
  # POST /categoria_recs.json
  def create
    @categoria_rec = CategoriaRec.new(categoria_rec_params)

    respond_to do |format|
      if @categoria_rec.save
        format.html { redirect_to @categoria_rec, notice: 'Categoria rec was successfully created.' }
        format.json { render :show, status: :created, location: @categoria_rec }
      else
        format.html { render :new }
        format.json { render json: @categoria_rec.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /categoria_recs/1
  # PATCH/PUT /categoria_recs/1.json
  def update
    respond_to do |format|
      if @categoria_rec.update(categoria_rec_params)
        format.html { redirect_to @categoria_rec, notice: 'Categoria rec was successfully updated.' }
        format.json { render :show, status: :ok, location: @categoria_rec }
      else
        format.html { render :edit }
        format.json { render json: @categoria_rec.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /categoria_recs/1
  # DELETE /categoria_recs/1.json
  def destroy
    @categoria_rec.destroy
    respond_to do |format|
      format.html { redirect_to categoria_recs_url, notice: 'Categoria rec was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_categoria_rec
      @categoria_rec = CategoriaRec.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def categoria_rec_params
      params.require(:categoria_rec).permit(:nombre)
    end
end
