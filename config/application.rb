require File.expand_path('../boot', __FILE__)

# require 'rails/all'
require 'action_controller/railtie'

# If you have a Gemfile, require the gems listed there, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(:default, Rails.env) if defined?(Bundler)

module Higgins
  class Application < Rails::Application
    config.active_support.deprecation = :stderr
    config.secret_token = 'c08895573baf2c545629d3394bd1ed97'
  end
end