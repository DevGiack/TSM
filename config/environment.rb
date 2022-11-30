# Load the Rails application.
require_relative "application"

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
    :user_name => 'the-cat-shop@outlook.com',
    :password => ENV['SENDINBLUE'],
    :domain => 'localhost',
    :address => 'smtp-relay.sendinblue.com',
    :port => 587,
    :authentication => :plain,
    :enable_starttls_auto => true
  }
