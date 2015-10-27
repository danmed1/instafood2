class Recetum < ActiveRecord::Base
    has_many :receta_ings
    has_many  :ingredientes, through: :receta_ings
    has_many :receta_usrs
    has_many :usuarios, through: :receta_usrs
    belongs_to :categoria_rec
end
