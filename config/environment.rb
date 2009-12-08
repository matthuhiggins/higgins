RAILS_GEM_VERSION = '2.3.5' unless defined? RAILS_GEM_VERSION
require File.join(File.dirname(__FILE__), 'boot')

Rails::Initializer.run do |config|
  # config.frameworks -= [:active_record, :active_resource, :action_mailer]
  config.frameworks = [:action_view, :action_controller]
  # config.cache_store = :mem_cache_store
  config.time_zone = 'UTC'
end