# frozen_string_literal: true

return unless Rails.env.production?

Mailgun.configure do |config|
  config.api_key = ENV.fetch('MAILGUN_API_KEY', nil)
end
