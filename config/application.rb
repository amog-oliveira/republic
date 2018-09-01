require_relative 'boot'

require 'rails/all'

Bundler.require(*Rails.groups)

module RepublicGirls
  class Application < Rails::Application
    config.load_defaults 5.2
    config.generators do |generator|
      generator.test_framework :rspec,
      fixture: false,
      view_specs: false,
      helper_specs: false,
      routing_specs: false  
    end

  end
end
