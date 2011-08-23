class ApplicationController < ActionController::Base
  protect_from_forgery
  
  before_filter :process_site
  
  def process_site
    @site = Site.find_by_domain("www.qingfengshanzhai.com")
  end
end
