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

ActiveRecord::Schema.define(version: 20171023164246) do

  create_table "active_admin_comments", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.bigint "resource_id"
    t.string "author_type"
    t.bigint "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "admin_users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
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
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "backgrounds", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "color"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
  end

  create_table "fonts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "font_family"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "posts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "title"
    t.string "description"
    t.string "img_url"
    t.string "link"
    t.string "date"
    t.string "title_color"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "font_id"
    t.bigint "background_id"
    t.bigint "reference_point_id"
    t.string "circle_color"
    t.integer "year_month_order"
    t.bigint "timeline_id"
    t.index ["background_id"], name: "index_posts_on_background_id"
    t.index ["font_id"], name: "index_posts_on_font_id"
    t.index ["reference_point_id"], name: "index_posts_on_reference_point_id"
    t.index ["timeline_id"], name: "index_posts_on_timeline_id"
  end

  create_table "reference_points", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "timeline_career_id"
    t.bigint "background_id"
    t.bigint "font_id"
    t.index ["background_id"], name: "index_reference_points_on_background_id"
    t.index ["font_id"], name: "index_reference_points_on_font_id"
    t.index ["timeline_career_id"], name: "index_reference_points_on_timeline_career_id"
  end

  create_table "timeline_careers", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "line_color"
    t.bigint "background_id"
    t.bigint "font_id"
    t.index ["background_id"], name: "index_timeline_careers_on_background_id"
    t.index ["font_id"], name: "index_timeline_careers_on_font_id"
  end

  add_foreign_key "posts", "backgrounds"
  add_foreign_key "posts", "fonts"
  add_foreign_key "posts", "reference_points"
  add_foreign_key "reference_points", "backgrounds"
  add_foreign_key "reference_points", "fonts"
  add_foreign_key "reference_points", "timeline_careers"
  add_foreign_key "timeline_careers", "backgrounds"
  add_foreign_key "timeline_careers", "fonts"
end
