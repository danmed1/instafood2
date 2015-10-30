class Usuario < ActiveRecord::Base
    validates :email, uniqueness:true,presence:true, format: {with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i}
    has_many :receta_usrs
    has_many :recetas, through: :receta_usrs
end

