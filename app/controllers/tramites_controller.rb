class TramitesController < ApplicationController
	def lista
		@tramites = Tramite.all
	end
	
	def nuevo
		@tramite = Tramite.new
		@servicios = Servicio.all
	end
	
	def crear
		@tramite = Tramite.new(params[:tramite])
		if @tramite.save
			flash[:notice] = "Tramite agregado con éxito"
			redirect_to(:action => 'lista')
		else
			flash[:notice] = "No se pudo agregar, revisa los datos"
			render(:action => 'nuevo', :id => @tramite.id)
		end
	end
	
	def editar
		@tramite = Tramite.find(params[:id])
		@servicios = Servicio.all
	end
	
	def actualizar
		@tramite = Tramite.find(params[:id])
		if @tramite.update_attributes(params[:tramite])
			flash[:notice] = "Tramite actualizado con éxito"
			redirect_to(:action => 'lista')
		else
			flash[:notice] = "No se pudo editar, revisa los datos"
			render(:action => 'editar', :id => @tramite.id)
		end
	end
	
	def borrar
		tramite = Tramite.find(params[:id])
		tramite.destroy
		flash[:notice] = "El tramite ha sido borrado"
		redirect_to(:action => 'lista')
	end
end
