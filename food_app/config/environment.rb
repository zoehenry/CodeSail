# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
  user_name: 'zoehenry', #ENV['SENDGRID_USERNAME'],
  password: 'P0T4T0EZ', #ENV['SENDGRID_PASSWORD'],
  domain: 'example.com',
  address: 'smtp.sendgrid.net',
  port: 587,
  authentication: :plain,
  enable_starttls_auto: true
}