class Servicio < ActiveRecord::Base
	validates_presence_of :pais, :tipo_visa, :dias_habiles_cliente, :message => "no puede estar en blanco"
end
