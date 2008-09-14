# Settings specified here will take precedence over those in config/environment.rb

# In the development environment your application's code is reloaded on
# every request.  This slows down response time but is perfect for development
# since you don't have to restart the webserver when you make code changes.
config.cache_classes = false

# Log error messages when you accidentally call methods on nil.
config.whiny_nils = true

# Show full error reports and disable caching
config.action_controller.consider_all_requests_local = true
config.action_view.debug_rjs                         = true
config.action_controller.perform_caching             = false

# Don't care if the mailer can't send
config.action_mailer.raise_delivery_errors = false

configatron do |config|
  # bookqueue 
  config.namespace(:bookqueue) do |bookqueue|
    bookqueue.url     = "http://lolxenuqueue.com/"
    bookqueue.title   = "Welcome to xenu's bookqueue. Feel free to change this message in <em>config.yml</em>"
  end

  # owner
  config.namespace(:owner) do |owner|
    owner.name   = "xenu"
    owner.email  = "xenu@xenucorp.com"
  end

  # twitter
  config.namespace(:twitter) do |twitter|
    twitter.use      = true
    twitter.login     = "xenuqueue"
    twitter.password  = "xenu21"
  end
end