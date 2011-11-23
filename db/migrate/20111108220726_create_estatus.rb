class CreateEstatus < ActiveRecord::Migration
  def self.up
    create_table :estatus do |t|
			t.string 'estado'
			t.string 'descripcion'
			t.string 'lugar'
      t.timestamps
    end
  end

  def self.down
    drop_table :estatus
  end
end
