class Observacion < ActiveRecord::Base
	belongs_to :tramite
  validates_presence_of :estatus, :comentario, :message =>"no puede estar en blanco"
end
