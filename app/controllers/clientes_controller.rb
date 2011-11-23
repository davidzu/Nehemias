class ClientesController < ApplicationController
	def lista
		@clientes = Cliente.all
	end
	
	def nuevo
			@cliente = Cliente.new
	end
	
	def crear
		@cliente = Cliente.new(params[:cliente])
		if @cliente.save
			flash[:notice] = "Cliente agregado con &eacute;xito"
			redirect_to(:action => 'lista')
		else
			flash[:notice] = "No se pudo agregar, revisa los datos"
			render(:action => 'nuevo', :id => @cliente.id)
		end
	end
	
	def editar
		@cliente = Cliente.find(params[:id])
	end
	
	def actualizar
		@cliente = Cliente.find(params[:id])
		if @cliente.update_attributes(params[:cliente])
			flash[:notice] = "Cliente actualizado con &eacute;xito"
			redirect_to(:action => 'lista')
		else
			flash[:notice] = "No se pudo editar, revisa los datos"
			render(:action => 'editar', :id => @cliente.id)
		end
	end
	
	def borrar
		cliente = Cliente.find(params[:id])
		cliente.destroy
		flash[:notice] = "El cliente ha sido borrado"
		redirect_to(:action => 'lista')
	end
end
