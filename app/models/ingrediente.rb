class Ingrediente < ActiveRecord::Base
    validates :nombre, presence: true, length: { maximum: 50 }, uniqueness: true
    has_and_belongs_to_many :recetums
end
