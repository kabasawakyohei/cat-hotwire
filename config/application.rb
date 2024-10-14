require_relative "boot"

require "rails"
require "active_model/railtie"
require "active_job/railtie"
require "active_record/railtie"
require "action_controller/railtie"
require "action_view/railtie"
require "action_cable/engine"

Bundler.require(*Rails.groups)

module CatHotwire
  class Application < Rails::Application
    config.load_defaults 7.1
    config.autoload_lib(ignore: %w(assets tasks))
    # タイムゾーンをTokyo（日本）にする
    config.time_zone = "Tokyo"
    # デフォルトのロケールを日本にする
    config.i18n.default_locale = :ja
    config.generators.system_tests = nil
  end
end
