class Tramite < ActiveRecord::Base
	belongs_to :ordende_servicio
	has_many :observacions

	NOMBRE_SIMPLE = /^[a-zA-Z][a-zA-Z\-' ]*[a-zA-Z ]$/
	validates_format_of :nombre_pasajero, :with => NOMBRE_SIMPLE, :message =>"no es valido"
	validates_presence_of :numero_pasaporte, :fecha_viaje, :pais, :message =>"no puede estar en blanco"
end
