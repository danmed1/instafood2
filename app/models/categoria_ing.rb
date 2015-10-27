class CategoriaIng < ActiveRecord::Base
    has_many:ingredientes
    validates :nombre,presence: true
end
