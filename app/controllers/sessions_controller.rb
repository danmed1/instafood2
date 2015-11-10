class SessionsController < ApplicationController
  def new
    render :layout =>'general'
  end
  def create
    user = Usuario.find_by(email: params[:session][:email].downcase)
    if user == nil
      redirect_to root_path
    else
      if user && user.authenticate(params[:session][:password])
        log_in user
        nombre user
        redirect_to inicio_path
      else
        flash.now[:danger] = 'Invalid email/password combination'
        redirect_to root_path
      end  
    end
    
  end

  def destroy
    log_out
    redirect_to root_path
  end
  
end
