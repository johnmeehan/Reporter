desc 'Sets up the configured cronjobs'
task cronjob: :environment do
  `whenever -w`
end
