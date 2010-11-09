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

ActiveRecord::Schema.define(:version => 20081118182035) do

  create_table "components", :force => true do |t|
    t.string   "compo_cd",   :limit => 10, :null => false
    t.string   "compo_nm",   :limit => 50, :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contingencies", :force => true do |t|
    t.string   "cntgcy_cd",  :limit => 6,  :null => false
    t.string   "cntgcy_nm",  :limit => 50, :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "datastats", :force => true do |t|
    t.integer  "compo_id",     :limit => 10, :null => false
    t.integer  "rptpd_id",     :limit => 10, :null => false
    t.string   "data_stat_cd", :limit => 14, :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "footnotes", :force => true do |t|
    t.integer  "compo_id",         :limit => 10
    t.integer  "rptpd_id",         :limit => 10
    t.integer  "tot_obltn_am"
    t.string   "ftnt_ty_cd"
    t.integer  "var_prcnt_nbr",    :limit => 3000
    t.integer  "thrshd_prcnt_nbr"
    t.text     "ftnt_tx"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reportingperiods", :force => true do |t|
    t.integer  "rptprd_id",  :limit => 10, :null => false
    t.integer  "cal_mo_nbr", :limit => 2,  :null => false
    t.string   "fy",         :limit => 4,  :null => false
    t.string   "prd_nm",     :limit => 50, :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
