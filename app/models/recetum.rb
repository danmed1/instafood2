class Recetum < ActiveRecord::Base
    mount_uploader :foto, AttachmentUploader
    validates :nombre, presence: true, uniqueness: true, length: { maximum: 40 }
    validates :tiempo_prep, presence: true, numericality: { only_integer: true }
    validates :porciones, presence: true, numericality: { only_integer: true }
    validates :categoria_rec, presence: true
    validates :foto, presence: true
    has_many :receta_ings
    has_many  :ingredientes, through: :receta_ings
    has_many :receta_usrs
    has_many :usuarios, through: :receta_usrs
    belongs_to :categoria_rec
    accepts_nested_attributes_for :receta_ings
end

def self.search(search)
  if search
    find(:all, :conditions => ['nombre LIKE ?', "%#{search}%"])
  else
    find(:all)
  end
end

def busquedaReceta
  @ahh = Recetum.where("nombre LIKE :nombre1", :nombre1 =>"empanada")
end