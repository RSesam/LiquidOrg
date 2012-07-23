# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
LiquidOrg::Application.initialize!

# DB-Sessions aktivieren
#config.action_controller.session_store = :active_record_store
