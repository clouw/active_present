$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
$LOAD_PATH.unshift(File.dirname(__FILE__))

ENV["RAILS_ENV"] ||= 'test'

require 'rspec'

require 'rails/all'
require 'rspec/rails'

require File.expand_path('../dummy/config/environment', __FILE__)

require 'active_present'

Rails.backtrace_cleaner.remove_silencers!

# Load support files
# Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].each { |f| require f }

RSpec.configure do |config|
  config.mock_with :rspec
  # config.use_transactional_fixtures = true
  # config.infer_base_class_for_anonymous_controllers = false
  config.order = 'random'
end



