# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

#All work done within this controller was completed by Zachary T. Kaspar 1st
class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  include SessionsHelper
  #protect_from_forgery # See ActionController::RequestForgeryProtection for details

  protect_from_forgery :secret => '8fc080370e56e929a2d5afca5540a0f7'

  # Scrub sensitive parameters from your log
  filter_parameter_logging :password
end
