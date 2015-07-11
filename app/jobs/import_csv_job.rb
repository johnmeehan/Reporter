class ImportCsvJob < ActiveJob::Base
  queue_as :default

  def perform(*args)
  	begin
  		# disable import button with loading spinner
  		logger.info "Importing from the CSV"
  		`bundle exec rake parse`
  	rescue
  		logger.fatal "Something is wrong with the hyper drive"
  	ensure
  		# trigger js to turn off loading spinner in button.
  	end
  end
end
