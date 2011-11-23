# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper

	def mensajesde_error_para( object )
		render(:partial => 'shared/mensajes_error', :locals => {:object => object})
	end
end
