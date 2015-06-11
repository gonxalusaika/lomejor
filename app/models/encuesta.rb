class Encuesta < ActiveRecord::Base
	has_many :opciones
	belongs_to :categoria
	accepts_nested_attributes_for :opciones, :reject_if => :all_blank, :allow_destroy => true

	def self.populares
		limit(4)
	end

end
