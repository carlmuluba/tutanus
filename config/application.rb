require_relative 'boot'

require 'rails/all'
require 'carrierwave'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)
module Tutanus
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1
    config.assets.compile = true
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    #config.action_mailer.default_url_options = { :host => 'http://www.tutanus.com' }# For mail_form gem
    config.action_mailer.perform_deliveries = true
    config.action_mailer.raise_delivery_errors = true
    config.action_mailer.delivery_method = :smtp

    config.action_mailer.smtp_settings = {
      :address => "smtp.gmail.com",
      :port => 587,
      :domain => "gmail.com",
      :user_name => "dasilva.is.design@gmail.com",
      :password => "3kmdeaveiro",
      :authentication => "plain",
      :enable_starttls_auto => true
  }

  end
end
