class ServiciosController < ApplicationController
def lista
		@servicios = Servicio.all
	end
	
	def nuevo
		@servicio = Servicio.new
	end
	
	def crear
		@servicio = Servicio.new(params[:servicio])
		if @servicio.save
			flash[:notice] = "Servicio agregado con éxito al catalogo"
			redirect_to(:action => 'lista')
		else
			flash[:notice] = "No se pudo agregar, revisa los datos"
			render(:action => 'nuevo', :id => @servicio.id)
		end
	end
	
	def editar
		@servicio = Servicio.find(params[:id])
	end
	
	def actualizar
		@servicio = Servicio.find(params[:id])
		if @servicio.update_attributes(params[:servicio])
			flash[:notice] = "Servicio actualizado con éxito"
			redirect_to(:action => 'lista')
		else
			flash[:notice] = "No se pudo editar, revisa los datos"
			render(:action => 'editar', :id => @servicio.id)
		end
	end
	
	def borrar
		servicio = Servicio.find(params[:id])
		servicio.destroy
		flash[:notice] = "Este servicio ha sido borrado"
		redirect_to(:action => 'lista')
	end
end
