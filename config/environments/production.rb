# Settings specified here will take precedence over those in config/application.rb
RedmineApp::Application.configure do
  # The production environment is meant for finished, "live" apps.
  # Code is not reloaded between requests
  config.cache_classes = true

  #####
  # Customize the default logger (http://ruby-doc.org/core/classes/Logger.html)
  #
  # Use a different logger for distributed setups
  # config.logger        = SyslogLogger.new
  #
  # Rotate logs bigger than 1MB, keeps no more than 7 rotated logs around.
  # When setting a new Logger, make sure to set it's log level too.
  #
  # config.logger = Logger.new(config.log_path, 7, 1048576)
  # config.logger.level = Logger::INFO

  # Full error reports are disabled and caching is turned on
  config.action_controller.perform_caching = true

  # Enable serving of images, stylesheets, and javascripts from an asset server
  # config.action_controller.asset_host                  = "http://assets.example.com"

  # Disable delivery errors if you bad email addresses should just be ignored
  config.action_mailer.raise_delivery_errors = false
config.action_mailer.perform_deliveries = true
	config.action_mailer.delivery_method = :smtp
	config.action_mailer.raise_delivery_errors = true
	config.action_mailer.smtp_settings = {
	:enable_starttls_auto => true,
	:address => "smtp.gmail.com",
	:port => 587,
	:domain => "gmail.com",
	:authentication => :login,
	:user_name => "ramonrails3@gmail.com",
	:password => "srirammca",
	}
  # No email in production log
  config.action_mailer.logger = nil

  config.active_support.deprecation = :log
end
