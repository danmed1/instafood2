class RecetaIng < ActiveRecord::Base
    
    validates :cantidad, presence:true, numericality: {greater_than: 0}
    validates :unidad, presence:true
    belongs_to :ingrediente
    belongs_to :receta
    
end
