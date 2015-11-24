class Usuario < ActiveRecord::Base
    validates :email, uniqueness:{message: "Ya existe un usuario registrado con este correo electronico"},
    presence:{message: "El campo de correo elctronico es un campo requerid"},
    confirmation:{message:"Los correos no coinciden"},
    format: {message:"El correo ingresado es invalido",with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i}
    validates :email_confirmation, presence:{message:"Es necesario confirmar el correo"}
    validates :password,presence:{message:"La contraseña es un campo necesario"},
    confirmation:{message:"Las contraseñas no coinciden"}
    validates :password_confirmation, presence:{message:"Es necesario confirmar la contraseña"}
    validates :alias, presence:{message:'El nombre es un campo necesario'},length: { maximum: 40 }
    validates :nombre, presence:{message:'El nombre es un campo necesario'},length: { maximum: 40 }
    validates :apellido, presence:{message:'El nombre es un campo necesario'}
    has_many :receta_usrs
    has_many :recetas, through: :receta_usrs

    
    
def authenticate(password,email)
    us = Usuario.find_by(password: password,email: email)
    
   # logger.info email
    if  us 
        return true
    else
        return false
    end
end
end

