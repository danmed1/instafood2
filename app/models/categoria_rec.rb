class CategoriaRec < ActiveRecord::Base
        validates :nombre, presence: true
    has_many :recetas
end
