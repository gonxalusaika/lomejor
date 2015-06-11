json.extract! @encuesta, :id, :pregunta
json.opciones @encuesta.opciones do |opcion|
	json.id opcion.id
	json.nombre opcion.nombre
	json.imagen opcion.imagen_url(:standard)
end
