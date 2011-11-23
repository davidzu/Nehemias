class CreateOrdendeServicios < ActiveRecord::Migration
  def self.up
    create_table :ordende_servicios do |t|
			t.references :cliente
			t.string 'ordena'
      t.timestamps
    end
  end

  def self.down
    drop_table :ordende_servicios
  end
end
