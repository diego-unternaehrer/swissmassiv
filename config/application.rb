require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Swissmassiv
  class Application < Rails::Application
    # Load application's model / class decorators
    initializer 'spree.decorators' do |app|
      config.to_prepare do
        Dir.glob(Rails.root.join('app/**/*_decorator*.rb')) do |path|
          require_dependency(path)
        end
      end
    end

    # Set German as default language
    config.i18n.enforce_available_locales = false
    config.i18n.available_locales = [:de, :en, :fr, :it]
    config.i18n.default_locale = :de

    config.active_storage.service = :cloudinary
    # Load application's view overrides
    initializer 'spree.overrides' do |app|
      config.to_prepare do
        Dir.glob(Rails.root.join('app/overrides/*.rb')) do |path|
          require_dependency(path)
        end
      end
    end
    config.generators do |generate|
      generate.assets false
      generate.helper false
      generate.test_framework :test_unit, fixture: false
    end
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
  end
end
