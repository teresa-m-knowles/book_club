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

ActiveRecord::Schema.define(version: 20190205223050) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "author_books", force: :cascade do |t|
    t.bigint "author_id"
    t.bigint "book_id"
    t.index ["author_id"], name: "index_author_books_on_author_id"
    t.index ["book_id"], name: "index_author_books_on_book_id"
  end

  create_table "authors", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "image", default: "data:image/jpeg;base64,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"
  end

  create_table "books", force: :cascade do |t|
    t.string "title"
    t.integer "page_count"
    t.integer "year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "image", default: "https://timedotcom.files.wordpress.com/2015/06/521811839-copy.jpg"
  end

  create_table "reviews", force: :cascade do |t|
    t.string "title"
    t.string "review_text"
    t.integer "rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.bigint "book_id"
    t.index ["book_id"], name: "index_reviews_on_book_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "author_books", "authors"
  add_foreign_key "author_books", "books"
  add_foreign_key "reviews", "books"
  add_foreign_key "reviews", "users"
end
