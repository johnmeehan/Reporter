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

ActiveRecord::Schema.define(version: 20_150_703_125_356) do
  create_table 'records', force: :cascade do |t|
    t.integer 'version'
    t.integer 'current_holdings'
    t.integer 'previous_holdings'
    t.decimal 'market_value'
    t.decimal 'previous_market_value'
    t.decimal 'pct_held'
    t.string 'pct_portfolio'
    t.string 'market_capitalization'
    t.integer 'q0_holding'
    t.datetime 'q0_quarter'
    t.string 'q0_source'
    t.integer 'q1_holding'
    t.datetime 'q1_quarter'
    t.string 'q1_source'
    t.integer 'q2_holding'
    t.datetime 'q2_quarter'
    t.string 'q2_source'
    t.integer 'q3_holding'
    t.datetime 'q3_quarter'
    t.string 'q3_source'
    t.integer 'q4_holding'
    t.datetime 'q4_quarter'
    t.string 'q4_source'
    t.integer 'q5_holding'
    t.datetime 'q5_quarter'
    t.string 'q5_source'
    t.integer 'q6_holding'
    t.datetime 'q6_quarter'
    t.string 'q6_source'
    t.integer 'q7_holding'
    t.datetime 'q7_quarter'
    t.string 'q7_source'
    t.integer 'q8_holding'
    t.datetime 'q8_quarter'
    t.string 'q8_source'
    t.decimal 'p0_price'
    t.decimal 'p1_price'
    t.decimal 'p4_price'
    t.string 'metro_area'
    t.string 'firm_name'
    t.string 'company_name'
    t.string 'ticker'
    t.decimal 'q0_market_value'
    t.integer 'qoq_net_change_flow'
    t.integer 'yoy_net_change_flow'
    t.integer 'qoq_inflow'
    t.integer 'qoq_outflow'
    t.integer 'yoy_inflow'
    t.integer 'yoy_outflow'
    t.integer 'qoq_new_positions'
    t.integer 'qoq_soldout_positions'
    t.integer 'qoq_increased_positions'
    t.integer 'qoq_decreased_positions'
    t.integer 'qoq_net_position_change'
    t.integer 'yoy_new_positions'
    t.integer 'yoy_soldout_positions'
    t.integer 'yoy_increased_positions'
    t.integer 'yoy_decreased_positions'
    t.integer 'yoy_net_position_change'
    t.integer 'new_positions'
    t.integer 'soldout_positions'
    t.integer 'increased_positions'
    t.integer 'decreased_positions'
    t.integer 'net_position_change'
    t.integer 'factset_security_id'
    t.integer 'factset_entity_id'
    t.datetime 'created_at',              null: false
    t.datetime 'updated_at',              null: false
  end
end
