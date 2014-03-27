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

ActiveRecord::Schema.define(:version => 20131130230940) do

  create_table "customers", :force => true do |t|
    t.integer  "customer_id"
    t.string   "name"
    t.string   "address"
    t.string   "city"
    t.string   "c_state"
    t.string   "zipcode"
    t.string   "email"
    t.string   "username"
    t.string   "password"
    t.string   "c_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "does_business_ins", :force => true do |t|
    t.integer  "customer_id"
    t.integer  "territory_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "employee_skills", :force => true do |t|
    t.string   "employee_id"
    t.string   "skill_id"
    t.date     "qualify_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "employees", :force => true do |t|
    t.string   "employee_id"
    t.string   "name"
    t.string   "address"
    t.string   "city"
    t.string   "c_state"
    t.string   "zipcode"
    t.date     "date_hired"
    t.date     "birth_date"
    t.string   "employee_supervisor"
    t.string   "email"
    t.string   "username"
    t.string   "password"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "order_lines", :force => true do |t|
    t.integer  "order_id"
    t.integer  "product_id"
    t.integer  "ordered_quantity"
    t.float    "product_price"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "orders", :force => true do |t|
    t.integer  "order_id"
    t.date     "order_date"
    t.integer  "customer_id"
    t.date     "fulfillment_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "produced_ins", :force => true do |t|
    t.integer  "product_id"
    t.string   "work_center_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "product_lines", :force => true do |t|
    t.integer  "product_line_id"
    t.string   "name"
    t.float    "annual_sales_goal"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", :force => true do |t|
    t.integer  "product_id"
    t.string   "description"
    t.string   "finish"
    t.float    "standard_price"
    t.integer  "product_line_id"
    t.string   "photo_path"
    t.float    "cost"
    t.float    "annual_sales_goal"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "photo_popup_path"
  end

  create_table "raw_materials", :force => true do |t|
    t.integer  "raw_material_id"
    t.string   "name"
    t.string   "unit_of_measure"
    t.float    "standard_cost"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reports", :force => true do |t|
    t.string   "dbName"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reports_controllers", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sales_people", :force => true do |t|
    t.integer  "sales_person_id"
    t.string   "name"
    t.string   "phone"
    t.string   "email"
    t.string   "username"
    t.string   "password"
    t.integer  "territory_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sessions", :force => true do |t|
    t.string   "session_id", :null => false
    t.text     "data"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sessions", ["session_id"], :name => "index_sessions_on_session_id"
  add_index "sessions", ["updated_at"], :name => "index_sessions_on_updated_at"

  create_table "skills", :force => true do |t|
    t.string   "skill_id"
    t.string   "skill_description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "supplies", :force => true do |t|
    t.integer  "vendor_id"
    t.integer  "raw_material_id"
    t.float    "supply_unit_price"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "territories", :force => true do |t|
    t.integer  "territory_id"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "testimonials", :force => true do |t|
    t.integer  "testimonial_id"
    t.text     "testimonial_content"
    t.date     "testimonial_date"
    t.integer  "customer_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "address"
    t.string   "city"
    t.string   "c_state"
    t.string   "zipcode"
    t.string   "c_type"
    t.string   "encrypted_password"
    t.string   "salt"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "remember_token"
  end

  add_index "users", ["remember_token"], :name => "index_users_on_remember_token"

  create_table "uses", :force => true do |t|
    t.integer  "product_id"
    t.integer  "raw_material_id"
    t.integer  "quantity_required"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "vendors", :force => true do |t|
    t.integer  "vendor_id"
    t.string   "name"
    t.string   "address"
    t.string   "city"
    t.string   "vstate"
    t.string   "zipcode"
    t.string   "phone"
    t.string   "email"
    t.string   "tax_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "work_centers", :force => true do |t|
    t.string   "work_center_id"
    t.string   "location"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "works_ins", :force => true do |t|
    t.string   "employee_id"
    t.string   "work_center_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
