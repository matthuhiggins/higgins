Higgins::Application.configure do
  config.cache_classes = true
  config.consider_all_requests_local = false
  config.action_controller.perform_caching = true
  config.assets.compress = true
  config.assets.compile = true
  config.assets.digest = true
end