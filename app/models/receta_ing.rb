class RecetaIng < ActiveRecord::Base
    #pruebas many to many
    attr_accessible :cantidad,
    :unidad,
    :ingregiente,
    :ingrediente_attributes
    validates :cantidad, presence:true, numericality: {greater_than: 0}
    validates :unidad, presence:true
    belongs_to :ingrediente
    belongs_to :receta
    #pruebas many to many
    accepts_nested_attributes_for :ingrediente,
                                :reject_if => :all_blank
    #fin
end
