class CreateClientes < ActiveRecord::Migration
  def self.up
    create_table :clientes do |t|
			t.references :cliente
			t.string 'nombre'
			t.string 'correo_electronico'
			t.text 'direccion'
			t.string 'rfc'
      t.timestamps
    end
  end

  def self.down
    drop_table :clientes
  end
end
