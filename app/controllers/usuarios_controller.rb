class UsuariosController < ApplicationController
  include SessionsHelper
  before_action :set_usuario, only: [:show, :edit, :update, :destroy]

  # GET /usuarios
  # GET /usuarios.json
  def index
    @usuarios = Usuario.all
  end

  # GET /usuarios/1
  # GET /usuarios/1.json
  def show
  end

  #Update Usuario
  def update
    if @usuario.update_attributes(usuario_params)
      flash[:success] = "Profile updated"
      redirect_to @usuario
    else
      render 'edit'
    end
  end
  
  # GET /usuarios/new
  def new
    @usuario = Usuario.new
     render :layout =>'general'
  end
  # GET /usuarios/1/edit
  def edit
  end

  # POST /usuarios
  # POST /usuarios.json
  def create
    @usuario = Usuario.new(usuario_params)

    respond_to do |format|
      if @usuario.save
        log_in @usuario
        format.html { redirect_to @usuario, notice: 'El usuario ha sido creado exitosamente' }
        format.json { render :show, status: :created, location: @usuario }
      else
        format.html { render :new }
        format.json { render json: @usuario.errors, status: :unprocessable_entity }
      end
    end
  end
  

  # DELETE /usuarios/1
  # DELETE /usuarios/1.json
  def destroy
    @usuario.destroy
    respond_to do |format|
      format.html { redirect_to usuarios_url, notice: 'Usuario was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_usuario
      @usuario = Usuario.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def usuario_params
      params[:activo]=true
      params.require(:usuario).permit(:email, :password, :alias, :nombre, :apellido, :activo ,:f_nac, :email_confirmation, :password_confirmation)
    end
end
