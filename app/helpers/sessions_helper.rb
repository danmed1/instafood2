module SessionsHelper
    def log_in(user)
        session[:user_id] = user.id
    end
    def nombre(user)
        session[:user_name] = user.nombre
    end
    def email(user)
        session[:user_email] = user.email
    end
    def current_user
        @current_user ||= Usuario.find_by(id: session[:user_id])
    end
    def log_out
        session.delete(:user_id)
        @current_user = nil
    end
end
