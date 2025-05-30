# Configure Solidus Preferences
# See http://docs.solidus.io/Spree/AppConfiguration.html for details

Spree.config do |config|
  # Core:

  config.load_defaults('3.4.3')

  config.address_requires_state = false

  # Default currency for new sites
  config.currency = "CHF"

  # Default country in address form
  config.default_country_iso = "CH"

  # from address for transactional emails
  config.mails_from = "rene@swissmassiv.ch"

  # Uncomment to stop tracking inventory levels in the application
  # config.track_inventory_levels = false

  # When set, product caches are only invalidated when they fall below or rise
  # above the inventory_cache_threshold that is set. Default is to invalidate cache on
  # any inventory changes.
  # config.inventory_cache_threshold = 3

  # Enable Paperclip adapter for attachments on images and taxons
  config.image_attachment_module = 'Spree::Image::ActiveStorageAttachment'
  # config.taxon_attachment_module = 'Spree::Image::ActiveStorageAttachment'


  # Permission Sets:

  # Uncomment and customize the following line to add custom permission sets
  # to a custom users role:
  # config.roles.assign_permissions :role_name, ['Spree::PermissionSets::CustomPermissionSet']


  # Frontend:

  # Custom logo for the frontend
  # config.logo = "logo/solidus.svg"

  # Template to use when rendering layout
  # config.layout = "spree/layouts/spree_application"


  # Admin:

  # Custom logo for the admin
  config.admin_interface_logo = "logo_black.png"

  # Gateway credentials can be configured statically here and referenced from
  # the admin. They can also be fully configured from the admin.
  #
  # Please note that you need to use the solidus_stripe gem to have
  # Stripe working: https://github.com/solidusio-contrib/solidus_stripe
  #
  # config.static_model_preferences.add(
  #   Spree::PaymentMethod::StripeCreditCard,
  #   'stripe_env_credentials',
  #   secret_key: ENV['STRIPE_SECRET_KEY'],
  #   publishable_key: ENV['STRIPE_PUBLISHABLE_KEY'],
  #   server: Rails.env.production? ? 'production' : 'test',
  #   test_mode: !Rails.env.production?
  # )
end

Spree::Frontend::Config.configure do |config|
  config.locale = 'de'
  config.load_defaults('3.4.3')
end

Spree::Backend::Config.configure do |config|
  config.locale = 'de'
  config.load_defaults('3.4.3')
  # Uncomment and change the following configuration if you want to add
  # a new menu item:
  #
  # config.menu_items << config.class::MenuItem.new(
  #   [:section],
  #   'icon-name',
  #   url: 'https://solidus.io/'
  # )
end

Spree::Api::Config.configure do |config|
  config.requires_authentication = true
  config.load_defaults('3.4.3')
end

Spree.user_class = "Spree::LegacyUser"

# If you want to add a field to the whitelisted ransackable attributes,
# just uncomment the following code and change it as you need.
#
# Spree::Model.whitelisted_ransackable_attributes << 'field'

# Rules for avoiding to store the current path into session for redirects
# When at least one rule is matched, the request path will not be stored
# in session.
# You can add your custom rules by uncommenting this line and changing
# the class name:
#
# Spree::UserLastUrlStorer.rules << 'Spree::UserLastUrlStorer::Rules::AuthenticationRule'
