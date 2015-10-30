class Ingrediente < ActiveRecord::Base
    mount_uploader :foto, AttachmentUploader
    validates :nombre, presence: true, uniqueness: true, length: { maximum: 40 }
    belongs_to:categoria_ing
    has_many :receta_ings
    has_many :recetas, through: :receta_ings 
end
