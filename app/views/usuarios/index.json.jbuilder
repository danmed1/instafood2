json.array!(@usuarios) do |usuario|
  json.extract! usuario, :id, :email, :password, :alias, :nombre, :apellido, :f_nac, :activo
  json.url usuario_url(usuario, format: :json)
end
