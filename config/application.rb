require File.expand_path('../boot', __FILE__)

require 'rails/all'
# require 'action_controller/railtie'

# If you have a Gemfile, require the gems listed there, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(:default, Rails.env) if defined?(Bundler)

module Higgins
  class Application < Rails::Application
    config.active_support.deprecation = :stderr
    config.secret_token = 'c08895573baf2c545629d3394bd1ed97'
    config.facebook = {
      app_id: '140646375985277',
      secret: '16abc1c5a4a7846a571f121b5d6c977d'
    }
  end
end