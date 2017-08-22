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

ActiveRecord::Schema.define(version: 20170822003409) do

  create_table "carts", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories_venues", id: false, force: :cascade do |t|
    t.integer "venue_id", null: false
    t.integer "category_id", null: false
  end

  create_table "comentarios", force: :cascade do |t|
    t.text "cuerpo"
    t.integer "promotion_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.string "texto"
  end

  create_table "comidas", force: :cascade do |t|
    t.string "description"
    t.string "total"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "cantidad"
  end

  create_table "comments", force: :cascade do |t|
    t.integer "hotel_id"
    t.text "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.string "texto"
    t.index ["hotel_id"], name: "index_comments_on_hotel_id"
  end

  create_table "estados", force: :cascade do |t|
    t.integer "estados"
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

# Could not dump table "events" because of following StandardError
#   Unknown type 'STRING' for column 'title'

  create_table "hotels", force: :cascade do |t|
    t.string "nombre"
    t.string "photo"
    t.string "descripcion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "price"
    t.string "servicio"
    t.string "category"
  end

  create_table "line_items", force: :cascade do |t|
    t.integer "product_id"
    t.integer "cart_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "quantity", default: 1
    t.decimal "price"
    t.index ["cart_id"], name: "index_line_items_on_cart_id"
    t.index ["product_id"], name: "index_line_items_on_product_id"
  end

  create_table "meetings", force: :cascade do |t|
    t.string "name"
    t.datetime "start_time"
    t.datetime "end_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "photo"
  end

  create_table "orden_comidas", force: :cascade do |t|
    t.string "product"
    t.string "total"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pagos", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "procomments", force: :cascade do |t|
    t.integer "promotion_id"
    t.text "texto"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["promotion_id"], name: "procomments_promotion_id_index"
  end

  create_table "products", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.string "photo"
    t.integer "price"
    t.string "category"
    t.string "subcategory"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "promotions", force: :cascade do |t|
    t.string "name"
    t.string "photo"
    t.string "price"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "category"
  end

  create_table "sendpros", force: :cascade do |t|
    t.string "lugar"
    t.integer "total"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "photo"
    t.string "pago"
    t.integer "status"
    t.datetime "start_time"
    t.datetime "end_time"
    t.date "fechaPri", default: "2017-08-07"
    t.date "fechaUlt", default: "2017-08-07"
    t.integer "promotion_id"
  end

  create_table "sends", force: :cascade do |t|
    t.string "pago"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "estatus"
    t.integer "user_id"
    t.string "photo"
    t.datetime "start_time"
    t.datetime "end_time"
    t.date "fechaPri", default: "2017-08-07"
    t.date "fechaUlt", default: "2017-08-07"
    t.integer "hotel_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "role", default: "Seller"
    t.string "name"
    t.string "phone"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "venta", force: :cascade do |t|
    t.string "nombre"
    t.date "fechaEn"
    t.date "fechaSa"
    t.string "tipoPago"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "venues", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "country"
    t.float "latitude"
    t.float "longitude"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
