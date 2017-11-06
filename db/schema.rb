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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20171104004132) do

  create_table "jogos", force: :cascade do |t|
    t.string "nome"
    t.string "publisher"
    t.string "desenvolvedora"
    t.decimal "rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "console"
  end

  create_table "jogos_tags", id: false, force: :cascade do |t|
    t.integer "jogo_id", null: false
    t.integer "tag_id", null: false
    t.index ["jogo_id"], name: "index_jogos_tags_on_jogo_id"
    t.index ["tag_id"], name: "index_jogos_tags_on_tag_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "jogo_id"
    t.integer "user_id"
    t.string "texto"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tags", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password"
    t.string "password_digest"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "activation_digest"
    t.boolean "activated", default: false
    t.datetime "activated_at"
    t.string "reset_digest"
    t.datetime "reset_sent_at"
  end

  create_table "usuario_avalia_jogos", force: :cascade do |t|
    t.integer "id_user"
    t.integer "id_jogo"
    t.integer "avaliacao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
