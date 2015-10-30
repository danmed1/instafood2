json.array!(@ingredientes) do |ingrediente|
  json.extract! ingrediente, :id, :nombre, :foto, :categoria
  json.url ingrediente_url(ingrediente, format: :json)
end
