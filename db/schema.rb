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

ActiveRecord::Schema.define(version: 20160817220953) do

  create_table "blocks", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "blocker_id"
    t.integer "blocked_id"
  end

  create_table "characteristics", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "category"
  end

  create_table "characteristics_profiles", id: false, force: :cascade do |t|
    t.integer "characteristic_id", null: false
    t.integer "profile_id", null: false
  end

  create_table "contacts", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contents", force: :cascade do |t|
    t.text "terms_of_service"
    t.text "slide_one"
    t.text "slide_two"
    t.text "slide_three"
    t.text "slide_four"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "about"
    t.text "contact"
  end

  create_table "conversations", force: :cascade do |t|
    t.integer "sender_id"
    t.integer "recipient_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "friendships", force: :cascade do |t|
    t.integer "user_id"
    t.integer "friend_id"
    t.boolean "approved"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "messages", force: :cascade do |t|
    t.text "body"
    t.integer "conversation_id"
    t.integer "user_id"
    t.boolean "read", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["conversation_id"], name: "index_messages_on_conversation_id"
    t.index ["user_id"], name: "index_messages_on_user_id"
  end

  create_table "mutes", force: :cascade do |t|
    t.integer "muter_id"
    t.integer "muted_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "conversation_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.string "class_rank"
    t.string "socioeconomic_status"
    t.string "living_situation"
    t.string "sexual_orientation"
    t.integer "comfort_with_sexuality"
    t.integer "age"
    t.boolean "is_first_generation_college_student"
    t.boolean "is_physically_disabled"
    t.boolean "is_parent"
    t.boolean "is_single_parent"
    t.boolean "is_from_foster_care"
    t.boolean "is_intercollegiate_athlete"
    t.boolean "is_military"
    t.boolean "is_out_of_state_student"
    t.boolean "is_international_student"
    t.boolean "is_transfer_student"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "online", default: false
    t.string "name"
    t.integer "recommend_count", default: 0
    t.string "counselor_hours"
    t.index ["user_id"], name: "index_profiles_on_user_id"
  end

  create_table "quizzes", force: :cascade do |t|
    t.string "answer1"
    t.string "answer2"
    t.string "answer3"
    t.string "answer4"
    t.string "answer5"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "recommendations", force: :cascade do |t|
    t.string "reason"
    t.text "additional_info"
    t.boolean "opened"
    t.integer "user_id"
    t.integer "peer_counselor_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "resources", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "position"
  end

  create_table "terms_of_services", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.integer "failed_attempts", default: 0, null: false
    t.string "unlock_token"
    t.datetime "locked_at"
    t.string "username"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "last_sign_out_at"
    t.boolean "appear_offline", default: false
    t.boolean "done_tut_filter", default: false
    t.boolean "done_tut_add_friend", default: false
    t.integer "unread_count", default: 0
    t.integer "block_count", default: 0
    t.boolean "peer_counselor", default: false
    t.integer "quiz_id"
    t.boolean "signed_liability", default: true
    t.boolean "showcase", default: false
    t.boolean "completed_bio", default: false
    t.string "unconfirmed_email"
    t.boolean "banned", default: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["unlock_token"], name: "index_users_on_unlock_token", unique: true
  end

end
