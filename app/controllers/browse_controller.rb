class BrowseController < ApplicationController

  def main
  	@encuestas_populares = Encuesta.populares
  	@categorias = Categoria.all
  end

  def acerca_de
  end
end
