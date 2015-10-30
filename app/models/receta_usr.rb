class RecetaUsr < ActiveRecord::Base
    
    belongs_to :receta
    belongs_to :usuario
    
end
