require 'rails_helper'

RSpec.describe "records/edit", type: :view do
  before(:each) do
    @record = assign(:record, Record.create!(
      :version => 1,
      :current_holding => "",
      :previous_holding => "",
      :market_value => "9.99",
      :previous_market_value => "9.99",
      :pct_held => "9.99",
      :pct_portfolio => "MyString",
      :market_capitalization => "MyString",
      :q0_holding => 1,
      :q0_source => "MyString",
      :q1_holding => 1,
      :q1_source => "MyString",
      :q2_holding => 1,
      :q2_source => "MyString",
      :q3_holding => 1,
      :q3_source => "MyString",
      :q4_holding => 1,
      :q4_source => "MyString",
      :q5_holding => 1,
      :q5_source => "MyString",
      :q6_holding => 1,
      :q6_source => "MyString",
      :q7_holding => 1,
      :q7_source => "MyString",
      :q8_holding => 1,
      :q8_source => "MyString",
      :p0_price => "9.99",
      :p1_price => "9.99",
      :p4_price => "9.99",
      :metro_area => "MyString",
      :firm_name => "MyString",
      :company_name => "MyString",
      :ticker => "MyString",
      :q0_market_value => "9.99",
      :qoq_net_change_flow => 1,
      :yoy_net_change_flow => 1,
      :qoq_inflow => 1,
      :qoq_outflow => 1,
      :yoy_inflow => 1,
      :yoy_outflow => 1,
      :qoq_new_positions => 1,
      :qoq_soldout_positions => 1,
      :qoq_increased_positions => 1,
      :qoq_decreased_positions => 1,
      :qoq_net_position_change => 1,
      :yoy_new_positions => 1,
      :yoy_soldout_positions => 1,
      :yoy_increased_positions => 1,
      :yoy_decreased_positions => 1,
      :yoy_net_position_change => 1,
      :new_positions => 1,
      :soldout_positions => 1,
      :increased_positions => 1,
      :decreased_positions => 1,
      :net_position_change => 1,
      :factset_security_id => 1,
      :factset_entity_id => 1
    ))
  end

  it "renders the edit record form" do
    render

    assert_select "form[action=?][method=?]", record_path(@record), "post" do

      assert_select "input#record_version[name=?]", "record[version]"

      assert_select "input#record_current_holding[name=?]", "record[current_holding]"

      assert_select "input#record_previous_holding[name=?]", "record[previous_holding]"

      assert_select "input#record_market_value[name=?]", "record[market_value]"

      assert_select "input#record_previous_market_value[name=?]", "record[previous_market_value]"

      assert_select "input#record_pct_held[name=?]", "record[pct_held]"

      assert_select "input#record_pct_portfolio[name=?]", "record[pct_portfolio]"

      assert_select "input#record_market_capitalization[name=?]", "record[market_capitalization]"

      assert_select "input#record_q0_holding[name=?]", "record[q0_holding]"

      assert_select "input#record_q0_source[name=?]", "record[q0_source]"

      assert_select "input#record_q1_holding[name=?]", "record[q1_holding]"

      assert_select "input#record_q1_source[name=?]", "record[q1_source]"

      assert_select "input#record_q2_holding[name=?]", "record[q2_holding]"

      assert_select "input#record_q2_source[name=?]", "record[q2_source]"

      assert_select "input#record_q3_holding[name=?]", "record[q3_holding]"

      assert_select "input#record_q3_source[name=?]", "record[q3_source]"

      assert_select "input#record_q4_holding[name=?]", "record[q4_holding]"

      assert_select "input#record_q4_source[name=?]", "record[q4_source]"

      assert_select "input#record_q5_holding[name=?]", "record[q5_holding]"

      assert_select "input#record_q5_source[name=?]", "record[q5_source]"

      assert_select "input#record_q6_holding[name=?]", "record[q6_holding]"

      assert_select "input#record_q6_source[name=?]", "record[q6_source]"

      assert_select "input#record_q7_holding[name=?]", "record[q7_holding]"

      assert_select "input#record_q7_source[name=?]", "record[q7_source]"

      assert_select "input#record_q8_holding[name=?]", "record[q8_holding]"

      assert_select "input#record_q8_source[name=?]", "record[q8_source]"

      assert_select "input#record_p0_price[name=?]", "record[p0_price]"

      assert_select "input#record_p1_price[name=?]", "record[p1_price]"

      assert_select "input#record_p4_price[name=?]", "record[p4_price]"

      assert_select "input#record_metro_area[name=?]", "record[metro_area]"

      assert_select "input#record_firm_name[name=?]", "record[firm_name]"

      assert_select "input#record_company_name[name=?]", "record[company_name]"

      assert_select "input#record_ticker[name=?]", "record[ticker]"

      assert_select "input#record_q0_market_value[name=?]", "record[q0_market_value]"

      assert_select "input#record_qoq_net_change_flow[name=?]", "record[qoq_net_change_flow]"

      assert_select "input#record_yoy_net_change_flow[name=?]", "record[yoy_net_change_flow]"

      assert_select "input#record_qoq_inflow[name=?]", "record[qoq_inflow]"

      assert_select "input#record_qoq_outflow[name=?]", "record[qoq_outflow]"

      assert_select "input#record_yoy_inflow[name=?]", "record[yoy_inflow]"

      assert_select "input#record_yoy_outflow[name=?]", "record[yoy_outflow]"

      assert_select "input#record_qoq_new_positions[name=?]", "record[qoq_new_positions]"

      assert_select "input#record_qoq_soldout_positions[name=?]", "record[qoq_soldout_positions]"

      assert_select "input#record_qoq_increased_positions[name=?]", "record[qoq_increased_positions]"

      assert_select "input#record_qoq_decreased_positions[name=?]", "record[qoq_decreased_positions]"

      assert_select "input#record_qoq_net_position_change[name=?]", "record[qoq_net_position_change]"

      assert_select "input#record_yoy_new_positions[name=?]", "record[yoy_new_positions]"

      assert_select "input#record_yoy_soldout_positions[name=?]", "record[yoy_soldout_positions]"

      assert_select "input#record_yoy_increased_positions[name=?]", "record[yoy_increased_positions]"

      assert_select "input#record_yoy_decreased_positions[name=?]", "record[yoy_decreased_positions]"

      assert_select "input#record_yoy_net_position_change[name=?]", "record[yoy_net_position_change]"

      assert_select "input#record_new_positions[name=?]", "record[new_positions]"

      assert_select "input#record_soldout_positions[name=?]", "record[soldout_positions]"

      assert_select "input#record_increased_positions[name=?]", "record[increased_positions]"

      assert_select "input#record_decreased_positions[name=?]", "record[decreased_positions]"

      assert_select "input#record_net_position_change[name=?]", "record[net_position_change]"

      assert_select "input#record_factset_security_id[name=?]", "record[factset_security_id]"

      assert_select "input#record_factset_entity_id[name=?]", "record[factset_entity_id]"
    end
  end
end
