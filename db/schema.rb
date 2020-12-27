ActiveRecord::Schema.define(version: 2020_12_27_114409) do

  create_table "saloons", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "opening_time"
    t.string "closing_time"
    t.string "services"
    t.string "contact"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
