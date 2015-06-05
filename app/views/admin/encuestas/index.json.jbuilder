json.array!(@encuestas) do |encuesta|
  json.extract! encuesta, :id, :nombre, :pregunta
  json.url encuesta_url(encuesta, format: :json)
end
