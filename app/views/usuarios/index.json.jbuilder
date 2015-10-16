json.array!(@usuarios) do |usuario|
  json.extract! usuario, :id, :nombre, :email, :activo, :foto, :pwd
  json.url usuario_url(usuario, format: :json)
end
