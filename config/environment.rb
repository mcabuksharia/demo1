# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!
CO = YAML.load_file("#{Rails.root.to_s}/config/country.yml")
