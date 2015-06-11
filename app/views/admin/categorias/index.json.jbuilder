json.array!(@categorias) do |categoria|
  json.extract! categoria, :id, :nombre
end
