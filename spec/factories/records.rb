# == Schema Information
#
# Table name: records
#
#  id                      :integer          not null, primary key
#  version                 :integer
#  current_holdings        :integer
#  previous_holdings       :integer
#  market_value            :decimal(, )
#  previous_market_value   :decimal(, )
#  pct_held                :decimal(, )
#  pct_portfolio           :string
#  market_capitalization   :string
#  q0_holding              :integer
#  q0_quarter              :datetime
#  q0_source               :string
#  q1_holding              :integer
#  q1_quarter              :datetime
#  q1_source               :string
#  q2_holding              :integer
#  q2_quarter              :datetime
#  q2_source               :string
#  q3_holding              :integer
#  q3_quarter              :datetime
#  q3_source               :string
#  q4_holding              :integer
#  q4_quarter              :datetime
#  q4_source               :string
#  q5_holding              :integer
#  q5_quarter              :datetime
#  q5_source               :string
#  q6_holding              :integer
#  q6_quarter              :datetime
#  q6_source               :string
#  q7_holding              :integer
#  q7_quarter              :datetime
#  q7_source               :string
#  q8_holding              :integer
#  q8_quarter              :datetime
#  q8_source               :string
#  p0_price                :decimal(, )
#  p1_price                :decimal(, )
#  p4_price                :decimal(, )
#  metro_area              :string
#  firm_name               :string
#  company_name            :string
#  ticker                  :string
#  q0_market_value         :decimal(, )
#  qoq_net_change_flow     :integer
#  yoy_net_change_flow     :integer
#  qoq_inflow              :integer
#  qoq_outflow             :integer
#  yoy_inflow              :integer
#  yoy_outflow             :integer
#  qoq_new_positions       :integer
#  qoq_soldout_positions   :integer
#  qoq_increased_positions :integer
#  qoq_decreased_positions :integer
#  qoq_net_position_change :integer
#  yoy_new_positions       :integer
#  yoy_soldout_positions   :integer
#  yoy_increased_positions :integer
#  yoy_decreased_positions :integer
#  yoy_net_position_change :integer
#  new_positions           :integer
#  soldout_positions       :integer
#  increased_positions     :integer
#  decreased_positions     :integer
#  net_position_change     :integer
#  factset_security_id     :integer
#  factset_entity_id       :integer
#  created_at              :datetime         not null
#  updated_at              :datetime         not null
#

FactoryGirl.define do
  factory :record do
    version 1
    current_holdings ''
    previous_holdings ''
    market_value '9.99'
    previous_market_value '9.99'
    pct_held '9.99'
    pct_portfolio 'MyString'
    market_capitalization 'MyString'
    q0_holding 1
    q0_quarter '2015-07-03 11:34:13'
    q0_source 'MyString'
    q1_holding 1
    q1_quarter '2015-07-03 11:34:13'
    q1_source 'MyString'
    q2_holding 1
    q2_quarter '2015-07-03 11:34:13'
    q2_source 'MyString'
    q3_holding 1
    q3_quarter '2015-07-03 11:34:13'
    q3_source 'MyString'
    q4_holding 1
    q4_quarter '2015-07-03 11:34:13'
    q4_source 'MyString'
    q5_holding 1
    q5_quarter '2015-07-03 11:34:13'
    q5_source 'MyString'
    q6_holding 1
    q6_quarter '2015-07-03 11:34:13'
    q6_source 'MyString'
    q7_holding 1
    q7_quarter '2015-07-03 11:34:13'
    q7_source 'MyString'
    q8_holding 1
    q8_quarter '2015-07-03 11:34:13'
    q8_source 'MyString'
    p0_price '9.99'
    p1_price '9.99'
    p4_price '9.99'
    metro_area 'MyString'
    firm_name 'MyString'
    company_name 'MyString'
    ticker 'MyString'
    q0_market_value '9.99'
    qoq_net_change_flow 1
    yoy_net_change_flow 1
    qoq_inflow 1
    qoq_outflow 1
    yoy_inflow 1
    yoy_outflow 1
    qoq_new_positions 1
    qoq_soldout_positions 1
    qoq_increased_positions 1
    qoq_decreased_positions 1
    qoq_net_position_change 1
    yoy_new_positions 1
    yoy_soldout_positions 1
    yoy_increased_positions 1
    yoy_decreased_positions 1
    yoy_net_position_change 1
    new_positions 1
    soldout_positions 1
    increased_positions 1
    decreased_positions 1
    net_position_change 1
    factset_security_id 1
    factset_entity_id 1
  end
end
