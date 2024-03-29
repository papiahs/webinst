# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110908184803) do

  create_table "arts", :force => true do |t|
    t.string   "titulo"
    t.text     "resumen"
    t.text     "contenido"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "arts_autors", :id => false, :force => true do |t|
    t.integer "autor_id"
    t.integer "art_id"
  end

  create_table "arts_pics", :id => false, :force => true do |t|
    t.integer "art_id"
    t.integer "pic_id"
  end

  create_table "arts_refs", :id => false, :force => true do |t|
    t.integer "art_id"
    t.integer "ref_id"
  end

  create_table "autors", :force => true do |t|
    t.string   "nombre"
    t.string   "especialidad"
    t.integer  "pic_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "autors_refs", :id => false, :force => true do |t|
    t.integer "autor_id"
    t.integer "ref_id"
  end

  create_table "pics", :force => true do |t|
    t.string   "titulo"
    t.string   "nombre"
    t.string   "tipo"
    t.binary   "data",       :limit => 1048576
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "refs", :force => true do |t|
    t.string   "titulo"
    t.string   "detalle"
    t.integer  "pic_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
