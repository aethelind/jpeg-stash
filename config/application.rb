require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module JpegStash
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.1

    ActionView::Base.field_error_proc = proc do |html_tag, instance|
      html_tag.gsub("form-control", "form-control is-invalid").html_safe
    end
  end
end
