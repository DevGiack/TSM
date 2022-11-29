# Load the Rails application.
require_relative "application"

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
    :user_name => 'apikey',
    :password => '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',
    :domain => 'monsite.fr',
    :address => 'smtp.sendgrid.net',
    :port => 587,
    :authentication => :plain,
    :enable_starttls_auto => true
  }
