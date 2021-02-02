require_relative "boot"

require 'action_controller/railtie'
require 'action_mailer/railtie'
# require 'active_model/railtie'
require 'sprockets/railtie'
# require 'rails/test_unit/railtie'

# require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Higgins
  class Application < Rails::Application
    config.load_defaults 6.1
  end
end
