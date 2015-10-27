class Recetum < ActiveRecord::Base
    validates :nombre,presence:true,uniqueness: true,length: {in: 5..20}
    validates :tipo, presence:true
    validates :descripcion,length: {maximum:100}
    validates :porciones, numericality: { only_integer:true }
    has_and_belongs_to_many :ingredientes
end
