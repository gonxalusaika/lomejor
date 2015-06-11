class Opcion < ActiveRecord::Base
	mount_uploader :imagen, ImagenUploader

	belongs_to :encuesta
	after_create :default

	def default
		self.cantidad_elegida = 0
	end

	def self.sumar_voto id
		opcion = self.find(id)
		puts "Antes tenia #{opcion.cantidad_elegida}"
		nueva_cantidad = opcion.cantidad_elegida+1
		puts "Ahora tiene que tener #{nueva_cantidad}"
		if opcion.update({cantidad_elegida: nueva_cantidad})
			puts "Pero se registro con #{opcion.cantidad_elegida}"
			nueva_cantidad
		else
			puts "Hubo un error"
		end
	end

end
