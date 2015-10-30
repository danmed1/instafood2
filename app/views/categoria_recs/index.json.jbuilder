json.array!(@categoria_recs) do |categoria_rec|
  json.extract! categoria_rec, :id, :nombre
  json.url categoria_rec_url(categoria_rec, format: :json)
end
