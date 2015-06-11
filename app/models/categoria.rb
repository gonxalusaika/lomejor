class Categoria < ActiveRecord::Base
	has_many :encuestas
end
