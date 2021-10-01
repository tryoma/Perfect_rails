require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Awesome
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.1
    config.time_zone = "Tokyo"
    config.i18n.default_locale = :ja
    # config.eager_load_paths << Rails.root.join("extras")
    config.active_storage.variant_processor = :vips
    config.action_view.form_with_generates_remote_forms = true
  end
end
