require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module DialogBook
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.0
    
    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    I18n.available_locales = %i(ja en)
    I18n.enforce_available_locales = true
    I18n.default_locale = :ja
    config.time_zone = "Asia/Tokyo"
    # config.eager_load_paths << Rails.root.join("extras")
  end
end
