json.array!(@categoria_ings) do |categoria_ing|
  json.extract! categoria_ing, :id, :nombre
  json.url categoria_ing_url(categoria_ing, format: :json)
end
