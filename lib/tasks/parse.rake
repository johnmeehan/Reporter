require "#{Rails.root}/app/helpers/rake_helper"
require 'csv'

include RakeHelper

desc 'Parse the provided CSV file'
task parse: :environment do
  file = 'lib/input/input.csv'
  # have we records? find the highest version number, else use the one given.
  Record.any? ? @latestversion = Record.uniq.order('version DESC').first.version : @latestversion = 0

  CSV.foreach(file, encoding: 'utf-8', headers: true, col_sep: '|', header_converters: :symbol) do |row|
    if @latestversion == 0
      @nextversion = row[1].to_i
    else
      @nextversion = @latestversion + 1
    end
    Record.create(create_record(row, @nextversion))
  end
  puts 'Finished Importing'
end
