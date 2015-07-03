require 'rails_helper'

RSpec.describe "records/index", type: :view do
  before(:each) do
    assign(:records, [
      Record.create!(
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
      ),
      Record.create!(
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
      )
    ])
  end

  it "renders a list of records" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "Pct Portfolio".to_s, :count => 2
    assert_select "tr>td", :text => "Market Capitalization".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Q0 Source".to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "Q1 Source".to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => "Q2 Source".to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => "Q3 Source".to_s, :count => 2
    assert_select "tr>td", :text => 6.to_s, :count => 2
    assert_select "tr>td", :text => "Q4 Source".to_s, :count => 2
    assert_select "tr>td", :text => 7.to_s, :count => 2
    assert_select "tr>td", :text => "Q5 Source".to_s, :count => 2
    assert_select "tr>td", :text => 8.to_s, :count => 2
    assert_select "tr>td", :text => "Q6 Source".to_s, :count => 2
    assert_select "tr>td", :text => 9.to_s, :count => 2
    assert_select "tr>td", :text => "Q7 Source".to_s, :count => 2
    assert_select "tr>td", :text => 10.to_s, :count => 2
    assert_select "tr>td", :text => "Q8 Source".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "Metro Area".to_s, :count => 2
    assert_select "tr>td", :text => "Firm Name".to_s, :count => 2
    assert_select "tr>td", :text => "Company Name".to_s, :count => 2
    assert_select "tr>td", :text => "Ticker".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => 11.to_s, :count => 2
    assert_select "tr>td", :text => 12.to_s, :count => 2
    assert_select "tr>td", :text => 13.to_s, :count => 2
    assert_select "tr>td", :text => 14.to_s, :count => 2
    assert_select "tr>td", :text => 15.to_s, :count => 2
    assert_select "tr>td", :text => 16.to_s, :count => 2
    assert_select "tr>td", :text => 17.to_s, :count => 2
    assert_select "tr>td", :text => 18.to_s, :count => 2
    assert_select "tr>td", :text => 19.to_s, :count => 2
    assert_select "tr>td", :text => 20.to_s, :count => 2
    assert_select "tr>td", :text => 21.to_s, :count => 2
    assert_select "tr>td", :text => 22.to_s, :count => 2
    assert_select "tr>td", :text => 23.to_s, :count => 2
    assert_select "tr>td", :text => 24.to_s, :count => 2
    assert_select "tr>td", :text => 25.to_s, :count => 2
    assert_select "tr>td", :text => 26.to_s, :count => 2
    assert_select "tr>td", :text => 27.to_s, :count => 2
    assert_select "tr>td", :text => 28.to_s, :count => 2
    assert_select "tr>td", :text => 29.to_s, :count => 2
    assert_select "tr>td", :text => 30.to_s, :count => 2
    assert_select "tr>td", :text => 31.to_s, :count => 2
    assert_select "tr>td", :text => 32.to_s, :count => 2
    assert_select "tr>td", :text => 33.to_s, :count => 2
  end
end
