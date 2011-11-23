class TelefonosController < ApplicationController
	def default
		@Atelefonos = Telefono.all
		@telefono = Telefono.new
	end
	
	def borrar
		@telefono = Telefono.find(params[:id])
		@telefono.destroy
		redirect_to(:action => 'default')
	end
	
	def nuevo
		@telefono = Telefono.new
	end
	
	def crear
		@telefono = Telefono.new(params[:telefono])
		if @telefono.save
			flash[:notice] = "Telefono agregado"
			redirect_to(:action => 'default')
		else
			flash[:notice] = "No se pudo agregar el telefono, revisa los datos."
			@Atelefonos = Telefono.all
			render(:action => 'default', :id => @telefono.id)
		end
	end
end
