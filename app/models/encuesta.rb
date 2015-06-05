class Encuesta < ActiveRecord::Base
	has_many :opciones
	accepts_nested_attributes_for :opciones, :reject_if => :all_blank, :allow_destroy => true
end
