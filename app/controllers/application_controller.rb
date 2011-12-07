class ApplicationController < ActionController::Base
  protect_from_forgery
  
  protected
    # this method should be placed in ApplicationController
    def restrict_to_development
      head(:bad_request) unless ENV['RAILS_ENV'] == "development"
    end
    
end
