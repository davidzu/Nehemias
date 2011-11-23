class OrdendeServiciosController < ApplicationController
	def lista
		@ordendeServicios = OrdendeServicio.all
	end
	
	def nuevo
		@ordende_servicio = OrdendeServicio.new
		tramite = @ordede_servicio.tramites.build
	end
	
	def crear
		@ordendeServicio = OrdendeServicio.new(params[:ordendeServicio])
		if @ordendeServicio.save
			flash[:notice] = "Orden de servicio lista"
			redirect_to(:action => 'lista')
		else
			flash[:notice] = "No se pudo agregar, revisa los datos"
			redirect_to(:action => 'nuevo', :id => @ordendeServicio.id)
		end
	end
	
	def editar
		@ordendeServicio = OrdendeServicio.find(params[:id])
	end
	
	def actualizar
		@ordendeServicio = OrdendeServicio.find(params[:id])
		if @ordendeServicio.update_attributes(params[:ordendeServicio])
			flash[:notice] = "Cliente actualizado con Éxito"
			redirect_to("/ordendeServicio/lista")
		else
			flash[:notice] = "No se pudo agregar, revisa los datos"
			redirect_to(:action => 'editar', :id => @ordendeServicio.id)
		end
	end
	
	def borrar
		ordendeServicio = OrdendeServicio.find(params[:id])
		ordendeServicio.destroy
		flash[:notice] = "La Orden ha sido borrada"
		redirect_to(:action => 'lista')
	end

	def select
		
	end
end
