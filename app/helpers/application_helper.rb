module ApplicationHelper
	def cabezal_autorizacion
		codificado = Base64.strict_encode64("#{ENV['LM_LOGIN']}:#{ENV['LM_PASS']}")
		"Basic #{codificado}"
	end
end
