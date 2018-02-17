# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20180216072509) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "allergies", force: :cascade do |t|
    t.integer  "background_id"
    t.string   "allergy_name"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "backgrounds", force: :cascade do |t|
    t.string   "name"
    t.integer  "age"
    t.string   "sex"
    t.string   "country"
    t.string   "occupation"
    t.string   "religion"
    t.string   "living_will"
    t.string   "profile_url"
    t.string   "notes"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "user_id"
  end

  create_table "medicines", force: :cascade do |t|
    t.integer  "background_id"
    t.string   "medicine_name"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "past_medical_histories", force: :cascade do |t|
    t.integer  "background_id"
    t.string   "icd_code"
    t.boolean  "brain_disease_in_the_past",   default: false, null: false
    t.boolean  "heart_disease_in_the_past",   default: false, null: false
    t.boolean  "surgery_in_the_past",         default: false, null: false
    t.boolean  "hospitalized_in_the_past",    default: false, null: false
    t.boolean  "attending_to_a_hospital_now", default: false, null: false
    t.datetime "created_at",                                  null: false
    t.datetime "updated_at",                                  null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.integer  "background_id"
    t.boolean  "General_Weight_loss_or_gain",                                     default: false, null: false
    t.boolean  "General_Fatigue",                                                 default: false, null: false
    t.boolean  "General_Fever_or_chills",                                         default: false, null: false
    t.boolean  "General_Weakness",                                                default: false, null: false
    t.boolean  "General_Trouble_sleeping",                                        default: false, null: false
    t.boolean  "Skin_Rashes",                                                     default: false, null: false
    t.boolean  "Skin_Lumps",                                                      default: false, null: false
    t.boolean  "Skin_Itching",                                                    default: false, null: false
    t.boolean  "Skin_Dryness",                                                    default: false, null: false
    t.boolean  "Skin_Color_changes",                                              default: false, null: false
    t.boolean  "Skin_Hair_and_nail_changes",                                      default: false, null: false
    t.boolean  "Head_Headache_",                                                  default: false, null: false
    t.boolean  "Head_Head_injury",                                                default: false, null: false
    t.boolean  "Head_Neck_Pain",                                                  default: false, null: false
    t.boolean  "Ears_Decreased_hearing",                                          default: false, null: false
    t.boolean  "Ears_Ringing_in_ears",                                            default: false, null: false
    t.boolean  "Ears_Earache",                                                    default: false, null: false
    t.boolean  "Ears_Drainage",                                                   default: false, null: false
    t.boolean  "Eyes_vision_loss_Changes",                                        default: false, null: false
    t.boolean  "Eyes_Glasses_or_contacts",                                        default: false, null: false
    t.boolean  "Eyes_Pain",                                                       default: false, null: false
    t.boolean  "Eyes_Redness",                                                    default: false, null: false
    t.boolean  "Eyes_Blurry_or_double_vision",                                    default: false, null: false
    t.boolean  "Eyes_Flashing_lights",                                            default: false, null: false
    t.boolean  "Eyes_Specks",                                                     default: false, null: false
    t.boolean  "Eyes_Glaucoma",                                                   default: false, null: false
    t.boolean  "Eyes_Cataracts",                                                  default: false, null: false
    t.boolean  "Eyes_Last_eye_exam",                                              default: false, null: false
    t.boolean  "Nose_stuffiness",                                                 default: false, null: false
    t.boolean  "Nose_Discharge",                                                  default: false, null: false
    t.boolean  "Nose_Itching",                                                    default: false, null: false
    t.boolean  "Nose_Hay_fever",                                                  default: false, null: false
    t.boolean  "Nose_Nosebleeds",                                                 default: false, null: false
    t.boolean  "Nose_Sinus_pain",                                                 default: false, null: false
    t.boolean  "Throat_Bleeding",                                                 default: false, null: false
    t.boolean  "Throat_Dentures",                                                 default: false, null: false
    t.boolean  "Throat_Sore_tongue",                                              default: false, null: false
    t.boolean  "Throat_Dry_mouth",                                                default: false, null: false
    t.boolean  "Throat_Sore_throat",                                              default: false, null: false
    t.boolean  "Throat_Hoarseness",                                               default: false, null: false
    t.boolean  "Throat_Thrush",                                                   default: false, null: false
    t.boolean  "Throat_Non_healing_sores",                                        default: false, null: false
    t.boolean  "Neck_lumps",                                                      default: false, null: false
    t.boolean  "Neck_Swollen_glands",                                             default: false, null: false
    t.boolean  "Neck_pain",                                                       default: false, null: false
    t.boolean  "Neck_stiffness",                                                  default: false, null: false
    t.boolean  "Breasts_Lumps",                                                   default: false, null: false
    t.boolean  "Breasts_Pain",                                                    default: false, null: false
    t.boolean  "Breasts_Discharge",                                               default: false, null: false
    t.boolean  "Breasts_Self_exams",                                              default: false, null: false
    t.boolean  "Breasts_Breast_feeding",                                          default: false, null: false
    t.boolean  "Respiratory_cough",                                               default: false, null: false
    t.boolean  "Respiratory_sputum",                                              default: false, null: false
    t.boolean  "Respiratory_Coughing_up_blood",                                   default: false, null: false
    t.boolean  "Respiratory_Shortness_of_breath",                                 default: false, null: false
    t.boolean  "Respiratory_Wheezing",                                            default: false, null: false
    t.boolean  "Respiratory_Painful_breathing",                                   default: false, null: false
    t.boolean  "Respiratory_Difficulty_breathing_lying_down",                     default: false, null: false
    t.boolean  "Respiratory_Swelling",                                            default: false, null: false
    t.boolean  "Respiratory_Sudden_awakening_from_sleep_with_shortness_of_breat", default: false, null: false
    t.boolean  "Gastrointestina_Swallowing_difficulties",                         default: false, null: false
    t.boolean  "Gastrointestina_Heartburn",                                       default: false, null: false
    t.boolean  "Gastrointestina_Change_in_appetite",                              default: false, null: false
    t.boolean  "Gastrointestina_Nausea",                                          default: false, null: false
    t.boolean  "Gastrointestina_Change_in_bowel_habits",                          default: false, null: false
    t.boolean  "Gastrointestina_Rectal_bleeding",                                 default: false, null: false
    t.boolean  "Gastrointestina_Constipation",                                    default: false, null: false
    t.boolean  "Gastrointestina_Diarrhea",                                        default: false, null: false
    t.boolean  "Gastrointestina_Yellow_eyes_or_skin",                             default: false, null: false
    t.boolean  "Urinary_Frequency",                                               default: false, null: false
    t.boolean  "Urinary_Urgency",                                                 default: false, null: false
    t.boolean  "Urinary_Burning_or_pain",                                         default: false, null: false
    t.boolean  "Urinary_Blood_in_urine",                                          default: false, null: false
    t.boolean  "Urinary_Incontinence",                                            default: false, null: false
    t.boolean  "Urinary_Change_in_urinary_strength",                              default: false, null: false
    t.boolean  "Vascular_Calf_pain_with_walking",                                 default: false, null: false
    t.boolean  "Vascular_Leg_cramping",                                           default: false, null: false
    t.boolean  "Musculoskeletal_Muscle_or_joint_pain",                            default: false, null: false
    t.boolean  "Musculoskeletal_Stiffness",                                       default: false, null: false
    t.boolean  "Musculoskeletal_Back_pain",                                       default: false, null: false
    t.boolean  "Musculoskeletal_Redness_of_joints",                               default: false, null: false
    t.boolean  "Musculoskeletal_Swelling_of_joints",                              default: false, null: false
    t.boolean  "Musculoskeletal_Trauma",                                          default: false, null: false
    t.boolean  "Neurologic_Dizziness",                                            default: false, null: false
    t.boolean  "Neurologic_Fainting",                                             default: false, null: false
    t.boolean  "Neurologic_Seizures",                                             default: false, null: false
    t.boolean  "Neurologic_Weakness",                                             default: false, null: false
    t.boolean  "Neurologic_Numbness",                                             default: false, null: false
    t.boolean  "Neurologic_Tingling",                                             default: false, null: false
    t.boolean  "Neurologic_Tremor",                                               default: false, null: false
    t.boolean  "Hematologic_Ease_of_bruising",                                    default: false, null: false
    t.boolean  "Hematologic_Ease_of_bleeding",                                    default: false, null: false
    t.boolean  "Endocrine_Head_or_cold_intolerance",                              default: false, null: false
    t.boolean  "Endocrine_Sweating",                                              default: false, null: false
    t.boolean  "Endocrine_Frequent_urination",                                    default: false, null: false
    t.boolean  "Endocrine_Thirst",                                                default: false, null: false
    t.boolean  "Endocrine_CHange_in_appetite",                                    default: false, null: false
    t.boolean  "Psychiatric_Nervousness",                                         default: false, null: false
    t.boolean  "Psychiatric_Stress",                                              default: false, null: false
    t.boolean  "Psychiatric_Depression",                                          default: false, null: false
    t.boolean  "Psychiatric_Memory_loss",                                         default: false, null: false
    t.datetime "created_at",                                                                      null: false
    t.datetime "updated_at",                                                                      null: false
  end

  add_index "reviews", ["background_id"], name: "index_reviews_on_background_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "name"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
  end

  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "reviews", "backgrounds"
end
