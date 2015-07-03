require "#{Rails.root}/app/helpers/rake_helper"
require 'csv'

include RakeHelper

desc "Parse the provided CSV file"
task :parse => :environment do
  # parse CSV file
  file = 'lib/input/input.csv'

  CSV.foreach(file, :encoding => 'utf-8', headers: true, :col_sep => '|',:header_converters => :symbol) do |row|
    if Record.exists?(row)  #this checks id aswell!!
      #if the version exists
      puts 'Found - inc version number - create new record'
      Record.create(create_record(row, 1))
    else
      #if the version number doesnt exist
      puts 'not Found -> create one'
      # debugger
      Record.create(create_record(row, 0))
    end
    puts 'Finished Importing'
    # Create new Record for each row.
    # puts 'Records: ' + Record.all.count
  end
end
