require_relative 'boot'

require 'rails/all'


# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Etsy
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
Rails.configuration.stripe = {
:publishable_key => ENV['STRIPE_PUBLISHABLE_KEY'] ||=  Rails.application.secrets.stripe_publishable_key,
:secret_key => ENV['STRIPE_SECRET_KEY'] ||= Rails.application.secrets.stripe_secret_key,
}


#Stripe.api_key = Rails.configuration.stripe[:secret_key]
  end
end
