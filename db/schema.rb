# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20111109180234) do

  create_table "clientes", :force => true do |t|
    t.integer  "cliente_id"
    t.string   "nombre"
    t.string   "correo_electronico"
    t.text     "direccion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "estatus", :force => true do |t|
    t.string   "estado"
    t.string   "descripcion"
    t.string   "lugar"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "observacions", :force => true do |t|
    t.integer  "tramite_id"
    t.text     "comentario"
    t.string   "estatus"
    t.date     "fecha_compromiso"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ordende_servicios", :force => true do |t|
    t.integer  "cliente_id"
    t.string   "ordena"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "servicios", :force => true do |t|
    t.string   "pais"
    t.string   "tipo_visa"
    t.integer  "dias_habiles_cliente"
    t.integer  "dias_habiles_consulado"
    t.integer  "costo_consular_dolares", :limit => 10, :precision => 10, :scale => 0
    t.integer  "costo_consular_pesos",   :limit => 10, :precision => 10, :scale => 0
    t.integer  "costo_administrativo",   :limit => 10, :precision => 10, :scale => 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "telefonos", :force => true do |t|
    t.integer  "cliente_id"
    t.string   "numero"
    t.string   "descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tramites", :force => true do |t|
    t.integer  "ordenesdeservicio_id"
    t.string   "nombre_pasajero"
    t.string   "numero_pasaporte"
    t.datetime "fecha_viaje"
    t.date     "fecha_entrega"
    t.boolean  "extranjero",           :default => false
    t.string   "pais"
    t.date     "fecha_consular"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "visay_precios", :force => true do |t|
    t.string   "pais"
    t.string   "tipo_visa"
    t.integer  "dias_habiles_cliente"
    t.integer  "dias_habiles_consulado"
    t.integer  "costo_consular_dolares", :limit => 10, :precision => 10, :scale => 0
    t.integer  "costo_consular_pesos",   :limit => 10, :precision => 10, :scale => 0
    t.integer  "costo_administrativo",   :limit => 10, :precision => 10, :scale => 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
