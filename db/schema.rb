# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_03_08_215227) do

  create_table "credits", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.decimal "valor", precision: 15, scale: 2
    t.string "aceitar"
    t.date "data_credito"
    t.bigint "requester_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["requester_id"], name: "index_credits_on_requester_id"
  end

  create_table "loans", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "prazo", null: false
    t.decimal "taxa", precision: 15, scale: 3
    t.decimal "valor", precision: 15, scale: 2
    t.bigint "credit_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["credit_id"], name: "index_loans_on_credit_id"
  end

  create_table "plots", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "parcela"
    t.decimal "valorParcela", precision: 10, scale: 2
    t.string "pago"
    t.date "vencimento"
    t.bigint "loan_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["loan_id"], name: "index_plots_on_loan_id"
  end

  create_table "requesters", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "nome"
    t.text "cnpj"
    t.text "telefone"
    t.text "telefone2"
    t.text "nascimento"
    t.string "endereco"
    t.string "endereco2"
    t.integer "numero"
    t.string "uf"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "credits", "requesters"
  add_foreign_key "loans", "credits"
  add_foreign_key "plots", "loans"
end
