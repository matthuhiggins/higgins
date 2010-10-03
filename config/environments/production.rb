Higgins::Application.configure do
  config.cache_classes = true

  config.consider_all_requests_local = false
  config.action_controller.perform_caching             = true
  config.action_view.cache_template_loading            = true
end