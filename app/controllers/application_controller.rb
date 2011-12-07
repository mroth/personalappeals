class ApplicationController < ActionController::Base
  protect_from_forgery
  
  #always use correct domain ala http://devcenter.heroku.com/articles/custom-domains
  before_filter :ensure_domain

  APP_DOMAIN = 'personalappeals.com'

  def ensure_domain
    if request.env['HTTP_HOST'] != APP_DOMAIN && ENV['RAILS_ENV'] == "production"
      # HTTP 301 is a "permanent" redirect
      redirect_to "http://#{APP_DOMAIN}", :status => 301
    end
  end
  
  protected
    # this method should be placed in ApplicationController
    def restrict_to_development
      head(:bad_request) unless ENV['RAILS_ENV'] == "development"
    end
  
end
