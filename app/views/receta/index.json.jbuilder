json.array!(@receta) do |recetum|
  json.extract! recetum, :id, :nombre, :descripcion, :porciones, :tiempoPrep, :fechaCreacion, :tipo, :image, :procedimiento
  json.url recetum_url(recetum, format: :json)
end
