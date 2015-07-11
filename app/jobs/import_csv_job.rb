class ImportCsvJob < ActiveJob::Base
  queue_as :default

  # around_perform do |job, block|
  #   # before_enqueue #disable button
  #   block.call
  #   # after_perform #enable button
  # end

  def perform(*args)
    begin
      logger.info "Importing from the CSV"
      `bundle exec rake parse`
    rescue
      logger.fatal "Something is wrong with the hyper drive"
    ensure
      # 
    end
  end
end
