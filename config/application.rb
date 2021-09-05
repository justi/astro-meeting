require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Rails2
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
		config.load_defaults 6.1
		
		Dir[Rails.root.join('lib', 'middleware', '*.{rb}')].each { |file| require file }

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")

    # Allow framing to see output in Repl.it
    config.action_dispatch.default_headers = {
      'X-Frame-Options' => ''
		}
		
    config.middleware.use Middleware::LocaleMiddleware
  end
end
