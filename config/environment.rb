RAILS_GEM_VERSION = '2.3.5' unless defined? RAILS_GEM_VERSION
require File.join(File.dirname(__FILE__), 'boot')

Rails::Initializer.run do |config|
  config.frameworks = [:action_view, :action_controller]
  config.gem 'memcached'
  config.after_initialize do
    require 'memcached'
    config.cache_store = :mem_cache_store, Memcached::Rails.new
  end
  config.time_zone = 'UTC'
end