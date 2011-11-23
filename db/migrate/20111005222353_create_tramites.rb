class CreateTramites < ActiveRecord::Migration
  def self.up
    create_table :tramites do |t|
			t.references :ordenesdeservicio
			t.string 'nombre_pasajero'
			t.string 'numero_pasaporte'
			t.datetime 'fecha_viaje'
			t.date 'fecha_entrega'
			t.boolean 'extranjero', :default => '0'
			t.string 'pais'
			t.date 'fecha_consular'
      t.timestamps
    end
  end

  def self.down
    drop_table :tramites
  end
end
