class EstatusController < ApplicationController

def lista
		@estatus = Estatu.all
	end
	
	def nuevo
		@estatu = Estatu.new
	end 
	
	def crear
		@estatu = Estatu.new(params[:estatu])
		if @estatu.save
			flash[:notice] = "Estatus agregado con éxito"
			redirect_to(:action => 'lista')
		else
			flash[:notice] = "No se pudo agregar, revisa los datos"
			render(:action => 'nuevo', :id => @estatu.id)
		end
	end
	
	def editar
		@estatu = Estatu.find(params[:id])
	end
	
	def actualizar
		@estatu = Estatu.find(params[:id])
		if @estatu.update_attributes(params[:estatu])
			flash[:notice] = "Estatus actualizado con éxito"
			redirect_to(:action => 'lista')
		else
			flash[:notice] = "No se pudo editar, revisa los datos"
			render(:action => 'editar', :id => @estatu.id)
		end
	end
	
	def borrar
		observacion = Estatu.find(params[:id])
		observacion.destroy
		flash[:notice] = "El estatus ha sido borrado"
		redirect_to(:action => 'lista')
	end
	
end
