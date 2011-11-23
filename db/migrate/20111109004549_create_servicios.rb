class CreateServicios < ActiveRecord::Migration
  def self.up
    create_table :servicios do |t|
      t.string :pais
      t.string :tipo_visa
      t.integer :dias_habiles_cliente
      t.integer :dias_habiles_consulado
      t.decimal :costo_consular_dolares
      t.decimal :costo_consular_pesos
      t.decimal :costo_administrativo

      t.timestamps
    end
  end

  def self.down
    drop_table :servicios
  end
end
