require 'rails_helper'

RSpec.describe "records/show", type: :view do
  before(:each) do
    @record = assign(:record, Record.create!(
      :version => 1,
      :current_holding => "",
      :previous_holding => "",
      :market_value => "9.99",
      :previous_market_value => "9.99",
      :pct_held => "9.99",
      :pct_portfolio => "Pct Portfolio",
      :market_capitalization => "Market Capitalization",
      :q0_holding => 2,
      :q0_source => "Q0 Source",
      :q1_holding => 3,
      :q1_source => "Q1 Source",
      :q2_holding => 4,
      :q2_source => "Q2 Source",
      :q3_holding => 5,
      :q3_source => "Q3 Source",
      :q4_holding => 6,
      :q4_source => "Q4 Source",
      :q5_holding => 7,
      :q5_source => "Q5 Source",
      :q6_holding => 8,
      :q6_source => "Q6 Source",
      :q7_holding => 9,
      :q7_source => "Q7 Source",
      :q8_holding => 10,
      :q8_source => "Q8 Source",
      :p0_price => "9.99",
      :p1_price => "9.99",
      :p4_price => "9.99",
      :metro_area => "Metro Area",
      :firm_name => "Firm Name",
      :company_name => "Company Name",
      :ticker => "Ticker",
      :q0_market_value => "9.99",
      :qoq_net_change_flow => 11,
      :yoy_net_change_flow => 12,
      :qoq_inflow => 13,
      :qoq_outflow => 14,
      :yoy_inflow => 15,
      :yoy_outflow => 16,
      :qoq_new_positions => 17,
      :qoq_soldout_positions => 18,
      :qoq_increased_positions => 19,
      :qoq_decreased_positions => 20,
      :qoq_net_position_change => 21,
      :yoy_new_positions => 22,
      :yoy_soldout_positions => 23,
      :yoy_increased_positions => 24,
      :yoy_decreased_positions => 25,
      :yoy_net_position_change => 26,
      :new_positions => 27,
      :soldout_positions => 28,
      :increased_positions => 29,
      :decreased_positions => 30,
      :net_position_change => 31,
      :factset_security_id => 32,
      :factset_entity_id => 33
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/Pct Portfolio/)
    expect(rendered).to match(/Market Capitalization/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Q0 Source/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/Q1 Source/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/Q2 Source/)
    expect(rendered).to match(/5/)
    expect(rendered).to match(/Q3 Source/)
    expect(rendered).to match(/6/)
    expect(rendered).to match(/Q4 Source/)
    expect(rendered).to match(/7/)
    expect(rendered).to match(/Q5 Source/)
    expect(rendered).to match(/8/)
    expect(rendered).to match(/Q6 Source/)
    expect(rendered).to match(/9/)
    expect(rendered).to match(/Q7 Source/)
    expect(rendered).to match(/10/)
    expect(rendered).to match(/Q8 Source/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/Metro Area/)
    expect(rendered).to match(/Firm Name/)
    expect(rendered).to match(/Company Name/)
    expect(rendered).to match(/Ticker/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/11/)
    expect(rendered).to match(/12/)
    expect(rendered).to match(/13/)
    expect(rendered).to match(/14/)
    expect(rendered).to match(/15/)
    expect(rendered).to match(/16/)
    expect(rendered).to match(/17/)
    expect(rendered).to match(/18/)
    expect(rendered).to match(/19/)
    expect(rendered).to match(/20/)
    expect(rendered).to match(/21/)
    expect(rendered).to match(/22/)
    expect(rendered).to match(/23/)
    expect(rendered).to match(/24/)
    expect(rendered).to match(/25/)
    expect(rendered).to match(/26/)
    expect(rendered).to match(/27/)
    expect(rendered).to match(/28/)
    expect(rendered).to match(/29/)
    expect(rendered).to match(/30/)
    expect(rendered).to match(/31/)
    expect(rendered).to match(/32/)
    expect(rendered).to match(/33/)
  end
end
