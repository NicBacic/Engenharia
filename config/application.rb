require File.expand_path('../boot', __FILE__)

require 'rails/all'
require 'net/http'
require 'openssl'
require 'resolv-replace'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module HelloWorld
  class Application < Rails::Application

  end
end
