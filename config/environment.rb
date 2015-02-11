# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

#configuracion del logger
config.logger = Logger.new(STDOUT)
config.log_level = :info
