json.extract! @categoria, :id, :nombre
json.encuestas @categoria.encuestas, :id, :pregunta
