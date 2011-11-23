class CreateTelefonos < ActiveRecord::Migration
  def self.up
    create_table :telefonos do |t|
			t.references :cliente
			t.string 'numero'
			t.string 'descripcion'
      t.timestamps
    end
  end

  def self.down
    drop_table :telefonos
  end
end
