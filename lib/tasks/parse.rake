require "#{Rails.root}/app/helpers/rake_helper"
require 'csv'

include RakeHelper

desc 'Parse the provided CSV file'
task parse: :environment do
  file = 'lib/input/input.csv'
  print "\e[1;3;30;47m\nStarting Import! #{file}\e[0m"
  # have we records? find the highest version number, else use the one given.
  Record.any? ? @latestversion = Record.uniq.order('version DESC').first.version : @latestversion = 0

  CSV.foreach(file, encoding: 'utf-8', headers: true, col_sep: '|', header_converters: :symbol) do |row|
    if @latestversion == 0
      @nextversion = row[1].to_i
      print "\e[22;1;32m+\e[0m"
    else
      @nextversion = @latestversion + 1
      print "\e[22;1;32m.\e[0m"
    end
    Record.create(create_record(row, @nextversion))
  end
  print "\e[1;3;30;47m\nFinished Importing\e[0m"
end
