require_relative 'boot'

require 'rails/all'
Bundler.require(*Rails.groups)

module Hukumiru
  class Application < Rails::Application
    config.i18n.default_locale = :ja 
    config.action_view.embed_authenticity_token_in_remote_forms = true
  end
end
