ENV["RAILS_ENV"] ||= 'test'
require File.expand_path("../dummy/config/environment", __FILE__)
require 'spree_frontend'
require 'spree_backend'
require 'rspec/rails'

Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].each {|f| require f}

require 'spree/testing_support/factories'
require 'spree/testing_support/preferences'
require 'spree/testing_support/controller_requests'
require 'spree/testing_support/authorization_helpers'
require 'spree/testing_support/url_helpers'
require 'spree/api/testing_support/helpers'
require 'spree/api/testing_support/setup'

# Requires factories defined in lib/spree_slider/factories.rb
require 'spree_slider/factories'

RSpec.configure do |config|
  config.infer_spec_type_from_file_location!
  config.infer_base_class_for_anonymous_controllers = false
  config.mock_with :rspec
  config.fixture_path = File.join(__dir__, 'fixtures')
  config.use_transactional_fixtures = true

  config.include FactoryBot::Syntax::Methods
  config.include Spree::Api::TestingSupport::Helpers, type: :controller
  config.extend  Spree::Api::TestingSupport::Setup, type: :controller
  config.include Spree::TestingSupport::ControllerRequests, type: :controller
  config.include Spree::TestingSupport::UrlHelpers
  config.extend Spree::TestingSupport::AuthorizationHelpers::Request, type: :request
  config.include Spree::TestingSupport::Preferences, type: :controller
  config.include Spree::TestingSupport::Preferences, type: :model
end
