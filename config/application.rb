require File.expand_path('../boot', __FILE__)

require 'action_controller/railtie'
require 'action_mailer/railtie'
require 'rails/test_unit/railtie'
require 'sprockets/railtie'

Bundler.require(*Rails.groups(assets: %w(development test)))

module Higgins
  class Application < Rails::Application
    config.assets.enabled = true
    config.active_support.deprecation = :stderr
    config.secret_token = 'c08895573baf2c545629d3394bd1ed97'

    config.facebook = {
      app_id: '140646375985277',
      secret: '16abc1c5a4a7846a571f121b5d6c977d'
    }
  end
end