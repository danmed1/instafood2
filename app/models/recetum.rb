class Recetum < ActiveRecord::Base
    validates :nombre, presence: true, uniqueness: true, length: { maximum: 40 }
    validates :tiempo_prep, presence: true, numericality: { only_integer: true }
    validates :porciones, presence: true, numericality: { only_integer: true }
    validates :categoria_rec, presence: true, numericality: { only_integer: true }
    has_many :receta_ings
    has_many  :ingredientes, through: :receta_ings
    has_many :receta_usrs
    has_many :usuarios, through: :receta_usrs
    belongs_to :categoria_rec
end
