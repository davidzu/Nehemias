class QuitarRfcDecliente < ActiveRecord::Migration
  def self.up
		remove_column :clientes, :rfc
  end

  def self.down
		add_column :clientes, :rfc, :string
  end
end
