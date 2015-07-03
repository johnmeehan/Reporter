require 'csv'

desc "Parse the provided CSV file"
task :parse => :environment do
  # parse CSV file
  file = 'lib/input/input.csv'


  CSV.foreach(file, :encoding => 'windows-1251:utf-8', headers: true) do |row|
    if Record.exists?(row)  #this checks id aswell!!
      #if the version exists
      puts 'Found - inc version number - create new record'
      Record.create(create_record(1))
    else
      #if the version number doesnt exist
      puts 'not Found -> create one'
      Record.create(create_record)
    end
    puts 'Finished Importing'
    # Create new Record for each row.
    puts 'Records: ' + Record.all.count
  end

  def create_record(version_inc = 0)
    {
      version: row[1].to_i + version_inc,
      current_holdings: row[2],
      previous_holdings: row[3],
      market_value: row[4],
      previous_market_value: row[5],
      pct_held: row[6],
      pct_portfolio: row[7],
      market_capitalization: row[8],
      q0_holding: row[9],
      q0_quarter: row[10],
      q0_source: row[11],
      q1_holding: row[12],
      q1_quarter: row[13],
      q1_source: row[14],
      q2_holding: row[15],
      q2_quarter: row[16],
      q2_source: row[17],
      q3_holding: row[18],
      q3_quarter: row[19],
      q3_source: row[20],
      q4_holding: row[21],
      q4_quarter: row[22],
      q4_source: row[23],
      q5_holding: row[24],
      q5_quarter: row[25],
      q5_source: row[26],
      q6_holding: row[27],
      q6_quarter: row[28],
      q6_source: row[29],
      q7_holding: row[30],
      q7_quarter: row[31],
      q7_source: row[32],
      q8_holding: row[33],
      q8_quarter: row[34],
      q8_source: row[35],
      p0_price: row[36],
      p1_price: row[37],
      p4_price: row[38],
      metro_area: row[39],
      firm_name: row[40],
      company_name: row[41],
      ticker: row[42],
      q0_market_value: row[43],
      qoq_net_change_flow: row[44],
      yoy_net_change_flow: row[45],
      qoq_inflow: row[46],
      qoq_outflow: row[47],
      yoy_inflow: row[48],
      yoy_outflow: row[49],
      qoq_new_positions: row[50],
      qoq_soldout_positions: row[51],
      qoq_increased_positions: row[52],
      qoq_decreased_positions: row[53],
      qoq_net_position_change: row[54],
      yoy_new_positions: row[55],
      yoy_soldout_positions: row[56],
      yoy_increased_positions: row[57],
      yoy_decreased_positions: row[58],
      yoy_net_position_change: row[59],
      new_positions: row[60],
      soldout_positions: row[61],
      increased_positions: row[62],
      decreased_positions: row[63],
      net_position_change: row[64],
      factset_security_id: row[65],
      factset_entity_id: row[66]
    }
  end
end
