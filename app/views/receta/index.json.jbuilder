json.array!(@receta) do |recetum|
  json.extract! recetum, :id, :nombre, :pasos, :tiempo_prep, :integer, :porciones, :usuario_id, :categoria_rec_id, :integer
  json.url recetum_url(recetum, format: :json)
end
