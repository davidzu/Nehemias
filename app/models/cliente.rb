class Cliente < ActiveRecord::Base
	has_many :ordende_servicios

	EMAIL_REGEX = /^[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,6}$/i
	validates_format_of :correo_electronico, :with =>EMAIL_REGEX, :message => "no es una dirección de correo valida"
	validates_presence_of :nombre, :message => "no puede estar en blanco"
end
