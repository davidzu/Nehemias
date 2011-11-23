class Telefono < ActiveRecord::Base
	belongs_to :cliente
	
	TELEFONO_SIMPLE = /^[^0-9]*(?:(\d)[^0-9]*){10}$/
	validates_format_of :numero, :with => TELEFONO_SIMPLE, :message => "no es valido"
	validates_presence_of :descripcion, :message => "no puede estar en blanco"
end
