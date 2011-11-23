class ObservacionsController < ApplicationController
	def lista
		@observacions = Observacion.all
	end
	
	def nuevo
		@observacion = Observacion.new
		@estatus = Estatu.all
	end 
	
	def crear
		@observacion = Observacion.new(params[:observacion])
		if @observacion.save
			flash[:notice] = "Observacion agregada con éxito"
			redirect_to(:action => 'lista')
		else
			flash[:notice] = "No se pudo agregar, revisa los datos"
			render(:action => 'nuevo', :id => @observacion.id)
		end
	end
	
	def editar
		@observacion = Observacion.find(params[:id])
		@estatus = Estatu.all
	end
	
	def actualizar
		@observacion = Observacion.find(params[:id])
		if @observacion.update_attributes(params[:observacion])
			flash[:notice] = "Observacion actualizada con éxito"
			redirect_to(:action => 'lista')
		else
			flash[:notice] = "No se pudo editar, revisa los datos"
			render(:action => 'editar', :id => @observacion.id)
		end
	end
	
	def borrar
		observacion = Observacion.find(params[:id])
		observacion.destroy
		flash[:notice] = "La observacion ha sido borrada"
		redirect_to(:action => 'lista')
	end
end
