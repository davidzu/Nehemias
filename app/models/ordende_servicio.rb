class OrdendeServicio < ActiveRecord::Base
	has_many :tramites	
	accepts_nested_attributes_for :tramites, :allow_destroy => 'true'
	belongs_to :cliente
	
	validates_presence_of :ordena, :message =>"no puede estar en blanco"
end
