require_relative "boot"

require "rails/all"


Bundler.require(*Rails.groups)

module RailsCourse
  class Application < Rails::Application
    config.assets.precompile += %w(*.png *.jpg *.jpeg *.git)
    config.load_defaults 7.2
    config.i18n.default_locale = :ru
    config.autoload_lib(ignore: %w[assets tasks])

  end
end
