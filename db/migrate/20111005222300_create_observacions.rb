class CreateObservacions < ActiveRecord::Migration
  def self.up
    create_table :observacions do |t|
			t.references :tramite
			t.text 'comentario'
			t.string 'estatus'
			t.date 'fecha_compromiso'
      t.timestamps
    end
  end

  def self.down
    drop_table :observacions
  end
end
