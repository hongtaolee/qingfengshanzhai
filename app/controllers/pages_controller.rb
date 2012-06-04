#endcoding: utf-8
class PagesController < ApplicationController
  def index
  end

  def show
    @page = SitePage.find(params[:id])
    
  	@page_title = @page.title
  	@page_description = @page.title
  	@page_keywords = @page.title    
  end

end
