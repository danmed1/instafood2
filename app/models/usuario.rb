class Usuario < ActiveRecord::Base
    validates :email, uniqueness:{message: "Ya existe un usuario registrado con este correo electronico"},
    presence:{message: "El campo de correo elctronico es un campo requerid"},
    confirmation:{message:"Los correos no coinciden"},
    format: {message:"El correo ingresado es invalido",with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i}
    validates :email_confirmation, presence:{message:"Es necesario confirmar el correo"}
    validates :password,presence:{message:"La contraseña es un campo necesario"},
    confirmation:{message:"Las contraseñas no coinciden"}
    validates :password_confirmation, presence:{message:"Es necesario confirmar la contraseña"}
    has_many :receta_usrs
    has_many :recetas, through: :receta_usrs
end

