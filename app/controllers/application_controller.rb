class ApplicationController < ActionController::Base
  skip_before_action :verify_authenticity_token #Avoid the CSRF token verification, rails using it for checking if user typing into a form is clear
end
