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

ActiveRecord::Schema.define(version: 20180204194041) do

  create_table "bpci_adjmnt_factor_rs", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "PROVIDER_CCN"
    t.integer "TOP_25TH_PERC_FY15"
    t.integer "TOP_25TH_PERC_FY16"
    t.decimal "HAC_ADJMNT_FACTOR", precision: 10
    t.decimal "LTCH_IRF_ADJMNT_FACTOR", precision: 10
    t.decimal "FR12_APU_REDUCTION", precision: 10
    t.decimal "FR15_APU_REDUCTION", precision: 10
    t.decimal "FR16_APU_REDUCTION", precision: 10
    t.decimal "APU_IQR_ADJMNT_FACTOR_FY15", precision: 10
    t.decimal "APU_IQR_ADJMNT_FACTOR_FY16", precision: 10
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "documents", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "filename"
    t.string "content_type"
    t.binary "file_contents"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
